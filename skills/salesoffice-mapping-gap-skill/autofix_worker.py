"""
SalesOffice Mapping Auto-Fix Worker

Separate worker (NOT inside WebJob) that runs on a schedule (every 5-10 min).
Reads SalesOffice.MappingMisses, auto-fixes Type A gaps with known categories,
and alerts on everything else.

Guardrails:
  - Type A only (Board already exists for hotel with valid RatePlanCode)
  - Category allowlist (standard/superior/deluxe/suite only)
  - min_hits >= 3 in lookback window AND distinct_orders >= 2
  - Rate limit: max 5 fixes per hotel per day
  - NOT EXISTS before every INSERT
  - Audit log + rollback SQL for every batch
  - Kill-switch via --dry-run or config flag

Usage:
    # Dry-run (default - no changes)
    python autofix_worker.py --connection-string "..."

    # Live mode (applies fixes)
    python autofix_worker.py --connection-string "..." --live

    # Custom guardrails
    python autofix_worker.py --connection-string "..." --live --min-hits 5 --hours 24 --max-fixes-per-hotel 3
"""

import argparse
import json
import os
import sys
from dataclasses import dataclass
from datetime import datetime, timezone

try:
    import pyodbc
except Exception:
    pyodbc = None

# ── Configuration ───────────────────────────────────────────────────────────

# Known safe categories - only these get auto-fixed
SAFE_CATEGORIES = {"standard", "superior", "deluxe", "suite"}

# Category ID lookup (must match MED_RoomCategory table)
CATEGORY_IDS = {
    "standard": 1, "superior": 2, "dormitory": 3, "deluxe": 4,
    "largeroom": 5, "lowsuite": 6, "apartment": 7, "highsuite": 8,
    "luxury": 9, "premium": 10, "juniorsuite": 11, "suite": 12,
    "minisuite": 13, "studio": 14, "executive": 15,
}

# InvTypeCode lookup (verified from production ratebycat data)
ITC_MAP = {
    1: "Stnd", 2: "SPR", 3: "DRM", 4: "DLX",
    5: "LR", 6: "LS", 7: "APT", 8: "HS",
    9: "LUX", 10: "PREM", 11: "JS", 12: "Suite",
    13: "MS", 14: "STU", 15: "EXEC",
}

BOARD_IDS = {"RO": 1, "BB": 2, "HB": 3, "FB": 4, "AI": 5, "CB": 6, "BD": 7}

# ── SQL Queries ─────────────────────────────────────────────────────────────

SQL_PENDING_MISSES = """
SELECT
    mm.HotelId,
    LOWER(mm.RoomCategory) AS RoomCategory,
    UPPER(mm.RoomBoard) AS RoomBoard,
    COUNT(*) AS MissCount,
    COUNT(DISTINCT mm.OrderId) AS DistinctOrders,
    MIN(mm.RoomPrice) AS MinPrice,
    AVG(mm.RoomPrice) AS AvgPrice,
    MAX(mm.SeenAt) AS LastSeen
FROM [SalesOffice.MappingMisses] mm
WHERE mm.Status = 'new'
  AND mm.SeenAt >= DATEADD(HOUR, -{hours}, GETDATE())
GROUP BY mm.HotelId, LOWER(mm.RoomCategory), UPPER(mm.RoomBoard)
HAVING COUNT(*) >= {min_hits}
   AND COUNT(DISTINCT mm.OrderId) >= {min_distinct_orders}
ORDER BY COUNT(*) DESC;
"""

SQL_RATEBYCAT_FOR_HOTEL = """
SELECT BoardId, CategoryId, RatePlanCode, InvTypeCode
FROM Med_Hotels_ratebycat
WHERE HotelId = ?;
"""

SQL_FIXES_TODAY = """
SELECT COUNT(*) AS cnt
FROM [SalesOffice.MappingMisses]
WHERE HotelId = ?
  AND Status = 'fixed'
  AND SeenAt >= CAST(GETDATE() AS DATE);
"""

SQL_INSERT_RATEBYCAT = """
IF NOT EXISTS (
    SELECT 1 FROM Med_Hotels_ratebycat
    WHERE HotelId = ? AND BoardId = ? AND CategoryId = ?
)
INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
VALUES (?, ?, ?, ?, ?);
"""

SQL_MARK_FIXED = """
UPDATE [SalesOffice.MappingMisses]
SET Status = 'fixed'
WHERE HotelId = ?
  AND LOWER(RoomCategory) = ?
  AND UPPER(RoomBoard) = ?
  AND Status = 'new';
"""

SQL_MARK_REVIEWED = """
UPDATE [SalesOffice.MappingMisses]
SET Status = 'reviewed'
WHERE HotelId = ?
  AND LOWER(RoomCategory) = ?
  AND UPPER(RoomBoard) = ?
  AND Status = 'new';
"""

SQL_HOTEL_NAME = """
SELECT [Name] FROM Med_Hotels WHERE HotelId = ?;
"""

# ── Data Classes ────────────────────────────────────────────────────────────


@dataclass
class Config:
    connection_string: str
    live: bool
    min_hits: int
    hours: int
    max_fixes_per_hotel: int
    min_distinct_orders: int
    out_dir: str


@dataclass
class FixResult:
    hotel_id: int
    hotel_name: str
    category: str
    board: str
    board_id: int
    category_id: int
    rpc: str
    itc: str
    action: str  # "FIXED", "SKIPPED_EXISTS", "SKIPPED_RATE_LIMIT", "ALERT_TYPE_B", "ALERT_UNKNOWN_CAT"
    reason: str
    miss_count: int
    avg_price: float


# ── Core Logic ──────────────────────────────────────────────────────────────

def get_hotel_name(cursor, hotel_id: int) -> str:
    cursor.execute(SQL_HOTEL_NAME, hotel_id)
    row = cursor.fetchone()
    return str(row[0]) if row else f"Hotel {hotel_id}"


def get_rpc_for_board(cursor, hotel_id: int, board_id: int) -> str | None:
    """Find existing RatePlanCode for hotel+board from ratebycat."""
    cursor.execute(SQL_RATEBYCAT_FOR_HOTEL, hotel_id)
    for row in cursor.fetchall():
        if row[0] == board_id:
            return str(row[2])
    return None


def get_fixes_today(cursor, hotel_id: int) -> int:
    cursor.execute(SQL_FIXES_TODAY, hotel_id)
    return cursor.fetchone()[0]


def process_miss(cursor, hotel_id: int, category: str, board: str,
                 miss_count: int, distinct_orders: int, avg_price: float,
                 cfg: Config) -> FixResult:
    """Process a single unmapped combination. Returns a FixResult."""
    hotel_name = get_hotel_name(cursor, hotel_id)
    board_id = BOARD_IDS.get(board)
    category_id = CATEGORY_IDS.get(category)

    base = dict(hotel_id=hotel_id, hotel_name=hotel_name, category=category,
                board=board, board_id=board_id or 0, category_id=category_id or 0,
                rpc="", itc="", miss_count=miss_count, avg_price=avg_price)

    # Guard 1: Known board?
    if not board_id:
        return FixResult(**base, action="ALERT_UNKNOWN_BOARD",
                         reason=f"Unknown board code '{board}'")

    # Guard 2: Known category?
    if not category_id:
        return FixResult(**base, action="ALERT_UNKNOWN_CAT",
                         reason=f"Unknown category '{category}' - not in MED_RoomCategory")

    # Guard 3: Category in safe allowlist?
    if category not in SAFE_CATEGORIES:
        return FixResult(**base, action="ALERT_UNSAFE_CAT",
                         reason=f"Category '{category}' not in safe list {SAFE_CATEGORIES}. Needs manual review.")

    # Guard 4: Board exists for hotel? (Type A vs Type B)
    rpc = get_rpc_for_board(cursor, hotel_id, board_id)
    if not rpc:
        return FixResult(**base, action="ALERT_TYPE_B",
                         reason=f"Board {board} has no RatePlanCode for hotel {hotel_id}. Create in Zenith first.")

    itc = ITC_MAP.get(category_id, f"CAT{category_id}")
    base["rpc"] = rpc
    base["itc"] = itc

    # Guard 5: Rate limit
    fixes_today = get_fixes_today(cursor, hotel_id)
    if fixes_today >= cfg.max_fixes_per_hotel:
        return FixResult(**base, action="SKIPPED_RATE_LIMIT",
                         reason=f"Hotel already has {fixes_today} fixes today (max={cfg.max_fixes_per_hotel})")

    # All guards passed → apply fix
    if cfg.live:
        cursor.execute(SQL_INSERT_RATEBYCAT,
                       hotel_id, board_id, category_id,
                       hotel_id, board_id, category_id, rpc, itc)

        # Check if it was actually inserted (vs already existed)
        if cursor.rowcount > 0:
            # Mark misses as fixed
            cursor.execute(SQL_MARK_FIXED, hotel_id, category, board)
            return FixResult(**base, action="FIXED",
                             reason=f"Inserted ratebycat ({rpc}/{itc}). Marked {cursor.rowcount} misses as fixed.")
        else:
            cursor.execute(SQL_MARK_FIXED, hotel_id, category, board)
            return FixResult(**base, action="SKIPPED_EXISTS",
                             reason="Row already exists in ratebycat")
    else:
        return FixResult(**base, action="WOULD_FIX",
                         reason=f"Dry-run: would insert ratebycat ({rpc}/{itc})")


# ── Output ──────────────────────────────────────────────────────────────────

def generate_rollback(results: list) -> str:
    lines = [
        f"-- Auto-Fix Rollback - {datetime.now(timezone.utc).isoformat()}",
        "BEGIN TRANSACTION;",
        "",
    ]
    for r in results:
        if r.action == "FIXED":
            lines.append(f"-- Rollback: {r.hotel_name} {r.board}/{r.category}")
            lines.append(
                f"DELETE FROM Med_Hotels_ratebycat WHERE HotelId={r.hotel_id} "
                f"AND BoardId={r.board_id} AND CategoryId={r.category_id} "
                f"AND RatePlanCode='{r.rpc}' AND InvTypeCode='{r.itc}';")
            lines.append("")
    lines.append("COMMIT TRANSACTION;")
    return "\n".join(lines)


def safe_print(text: str):
    try:
        print(text)
    except UnicodeEncodeError:
        print(text.encode("ascii", errors="replace").decode("ascii"))


# ── Main ────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="SalesOffice Mapping Auto-Fix Worker")
    parser.add_argument("--connection-string", help="ODBC connection string (or use --config)")
    parser.add_argument("--config", help="Path to JSON config file (avoids secrets in CLI args)")
    parser.add_argument("--live", action="store_true", help="Apply fixes (default: dry-run)")
    parser.add_argument("--min-hits", type=int, default=None, help="Min miss count in window (default: 3)")
    parser.add_argument("--hours", type=int, default=None, help="Lookback window hours (default: 24)")
    parser.add_argument("--max-fixes-per-hotel", type=int, default=None, help="Max fixes per hotel per day (default: 5)")
    parser.add_argument("--min-distinct-orders", type=int, default=None, help="Min distinct orders with this miss (default: 2)")
    parser.add_argument("--out", default=None, help="Output directory")
    args = parser.parse_args()

    if pyodbc is None:
        raise SystemExit("pyodbc required. Install: pip install pyodbc")

    # Load config from file if provided (secrets stay in file, not in CLI args)
    file_cfg = {}
    if args.config:
        config_path = args.config
        if not os.path.isabs(config_path):
            config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), config_path)
        with open(config_path, "r", encoding="utf-8") as f:
            file_cfg = json.load(f)

    # CLI args override config file; config file overrides defaults
    conn_str = args.connection_string or file_cfg.get("connection_string") or os.environ.get("MEDICI_SQL_CONN")
    if not conn_str:
        raise SystemExit("Provide --connection-string, --config with connection_string, or set MEDICI_SQL_CONN env var")

    cfg = Config(
        connection_string=conn_str,
        live=args.live,
        min_hits=args.min_hits if args.min_hits is not None else file_cfg.get("min_hits", 3),
        hours=args.hours if args.hours is not None else file_cfg.get("hours", 24),
        max_fixes_per_hotel=args.max_fixes_per_hotel if args.max_fixes_per_hotel is not None else file_cfg.get("max_fixes_per_hotel", 5),
        min_distinct_orders=args.min_distinct_orders if args.min_distinct_orders is not None else file_cfg.get("min_distinct_orders", 2),
        out_dir=args.out or file_cfg.get("out_dir", "autofix-report"),
    )

    os.makedirs(cfg.out_dir, exist_ok=True)
    mode = "LIVE" if cfg.live else "DRY-RUN"
    print(f"=== Auto-Fix Worker [{mode}] ===")
    print(f"Window: {cfg.hours}h | Min hits: {cfg.min_hits} | Max fixes/hotel/day: {cfg.max_fixes_per_hotel}")
    print(f"Safe categories: {SAFE_CATEGORIES}")
    print()

    conn = pyodbc.connect(cfg.connection_string)
    cursor = conn.cursor()

    # Load pending misses
    query = SQL_PENDING_MISSES.format(hours=cfg.hours, min_hits=cfg.min_hits, min_distinct_orders=cfg.min_distinct_orders)
    cursor.execute(query)
    misses = cursor.fetchall()
    print(f"Pending miss combos (>={cfg.min_hits} hits, >=2 distinct orders): {len(misses)}")

    if not misses:
        print("Nothing to process.")
        conn.close()
        return

    # Process each miss
    results = []
    for row in misses:
        hotel_id, category, board = int(row[0]), str(row[1]), str(row[2])
        miss_count, distinct_orders = int(row[3]), int(row[4])
        avg_price = float(row[6]) if row[6] else 0.0

        result = process_miss(cursor, hotel_id, category, board,
                              miss_count, distinct_orders, avg_price, cfg)
        results.append(result)

    if cfg.live:
        conn.commit()

    conn.close()

    # Print results
    fixed = [r for r in results if r.action == "FIXED"]
    would_fix = [r for r in results if r.action == "WOULD_FIX"]
    skipped = [r for r in results if r.action.startswith("SKIPPED")]
    alerts = [r for r in results if r.action.startswith("ALERT")]

    print()
    print(f"{'='*60}")
    print(f"RESULTS")
    print(f"{'='*60}")
    if cfg.live:
        print(f"  Fixed:   {len(fixed)}")
    else:
        print(f"  Would fix: {len(would_fix)}")
    print(f"  Skipped: {len(skipped)}")
    print(f"  Alerts:  {len(alerts)}")

    for r in (fixed or would_fix):
        safe_print(f"  [{'FIXED' if cfg.live else 'WOULD_FIX'}] {r.hotel_name} ({r.hotel_id}) "
                   f"{r.board}/{r.category} -> RPC={r.rpc} ITC={r.itc} "
                   f"(seen {r.miss_count}x, avg ${r.avg_price:.0f})")

    for r in skipped:
        safe_print(f"  [SKIP] {r.hotel_name} ({r.hotel_id}) {r.board}/{r.category}: {r.reason}")

    for r in alerts:
        safe_print(f"  [ALERT] {r.hotel_name} ({r.hotel_id}) {r.board}/{r.category}: {r.reason}")

    # Save outputs
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    # Audit log
    audit = {
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "mode": mode,
        "config": {"min_hits": cfg.min_hits, "hours": cfg.hours,
                    "max_fixes_per_hotel": cfg.max_fixes_per_hotel,
                    "safe_categories": sorted(SAFE_CATEGORIES)},
        "results": [
            {"hotel_id": r.hotel_id, "hotel_name": r.hotel_name,
             "category": r.category, "board": r.board,
             "action": r.action, "reason": r.reason,
             "rpc": r.rpc, "itc": r.itc,
             "miss_count": r.miss_count, "avg_price": r.avg_price}
            for r in results
        ],
        "summary": {
            "fixed": len(fixed), "would_fix": len(would_fix),
            "skipped": len(skipped), "alerts": len(alerts),
        },
    }
    audit_path = os.path.join(cfg.out_dir, f"audit_{timestamp}.json")
    with open(audit_path, "w", encoding="utf-8") as f:
        json.dump(audit, f, ensure_ascii=False, indent=2)
    print(f"\nAudit log: {audit_path}")

    # Rollback SQL
    if fixed:
        rollback = generate_rollback(results)
        rollback_path = os.path.join(cfg.out_dir, f"rollback_{timestamp}.sql")
        with open(rollback_path, "w", encoding="utf-8") as f:
            f.write(rollback)
        print(f"Rollback SQL: {rollback_path}")

    print("\nDone.")


if __name__ == "__main__":
    main()
