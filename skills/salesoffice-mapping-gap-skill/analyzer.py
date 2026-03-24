"""
SalesOffice Mapping Gap Analyzer v2

Analyzes Med_Hotels_ratebycat coverage, identifies missing Board+Category
combinations, classifies gaps as auto-fixable (Type A) or manual (Type B),
and generates SQL INSERT statements to close gaps.

v2 changes (2026-03-17):
  - Reads from SalesOffice.MappingMisses table (real data from scans)
  - Guardrails: allowlist, frequency threshold, audit trail
  - Falls back to heuristic mode if MappingMisses table doesn't exist yet

Usage:
    # Data-driven mode (reads MappingMisses table - requires WebJob v2 deployed)
    python analyzer.py --connection-string "..." [--min-hits 3] [--hours 48] [--apply] [--out report]

    # Heuristic mode (fills common categories for existing boards - works without WebJob change)
    python analyzer.py --connection-string "..." --heuristic [--hotel-id 6805] [--out report]

    # CSV mode (offline)
    python analyzer.py --input-ratebycat-csv ratebycat.csv --input-details-csv details.csv [--out report]
"""

import argparse
import json
import os
import re
import sys
from dataclasses import dataclass, field
from datetime import datetime, timezone

import pandas as pd

try:
    import pyodbc
except Exception:
    pyodbc = None

# ── Reference Data ──────────────────────────────────────────────────────────

BOARD_CODES = {1: "RO", 2: "BB", 3: "HB", 4: "FB", 5: "AI", 6: "CB", 7: "BD"}
BOARD_IDS = {v: k for k, v in BOARD_CODES.items()}

CATEGORY_NAMES = {
    1: "standard", 2: "superior", 3: "dormitory", 4: "deluxe",
    5: "largeroom", 6: "lowsuite", 7: "apartment", 8: "highsuite",
    9: "luxury", 10: "premium", 11: "juniorsuite", 12: "suite",
    13: "minisuite", 14: "studio", 15: "executive",
}
CATEGORY_IDS = {v: k for k, v in CATEGORY_NAMES.items()}

# InvTypeCode mapping - verified from production data (rbc_check.txt)
ITC_MAP = {
    1: "Stnd", 2: "SPR", 3: "DRM", 4: "DLX",
    5: "LR", 6: "LS", 7: "APT", 8: "HS",
    9: "LUX", 10: "PREM", 11: "JS", 12: "Suite",
    13: "MS", 14: "STU", 15: "EXEC",
}

# ── SQL Queries ─────────────────────────────────────────────────────────────

SQL_RATEBYCAT = """
SELECT
    rbcat.Id, rbcat.HotelId, rbcat.BoardId, rbcat.CategoryId,
    rbcat.RatePlanCode, rbcat.InvTypeCode,
    h.[Name] AS HotelName,
    h.Innstant_ZenithId AS VenueId,
    brd.BoardCode,
    Lower(cat.[Name]) AS CategoryName
FROM [Med_Hotels_ratebycat] rbcat
LEFT JOIN MED_Board brd ON brd.BoardId = rbcat.BoardId
LEFT JOIN MED_RoomCategory cat ON cat.CategoryId = rbcat.CategoryId
LEFT JOIN Med_Hotels h ON h.HotelId = rbcat.HotelId;
"""

SQL_DETAILS_COMBOS = """
SELECT DISTINCT
    d.HotelId,
    h.[Name] AS HotelName,
    h.Innstant_ZenithId AS VenueId,
    Lower(d.RoomCategory) AS RoomCategory,
    Upper(d.RoomBoard) AS RoomBoard,
    COUNT(*) AS DetailCount,
    MAX(d.DateCreated) AS LastSeen
FROM [SalesOffice.Details] d
LEFT JOIN Med_Hotels h ON h.HotelId = d.HotelId
WHERE d.IsDeleted = 0
GROUP BY d.HotelId, h.[Name], h.Innstant_ZenithId, d.RoomCategory, d.RoomBoard;
"""

SQL_WEBJOB_STATUS = """
SELECT
    o.Id AS OrderId,
    o.DestinationId,
    o.DateFrom,
    o.DateTo,
    o.WebJobStatus
FROM [SalesOffice.Orders] o
WHERE o.WebJobStatus LIKE '%Innstant Api Rooms:%'
  AND o.IsActive = 1;
"""

SQL_ACTIVE_HOTELS = """
SELECT DISTINCT
    h.HotelId,
    h.[Name] AS HotelName,
    h.Innstant_ZenithId AS VenueId,
    h.isActive
FROM Med_Hotels h
WHERE h.Innstant_ZenithId > 0 AND h.isActive = 1;
"""

SQL_MAPPING_MISSES = """
SELECT
    mm.HotelId,
    h.[Name] AS HotelName,
    h.Innstant_ZenithId AS VenueId,
    Lower(mm.RoomCategory) AS RoomCategory,
    Upper(mm.RoomBoard) AS RoomBoard,
    COUNT(*) AS MissCount,
    MIN(mm.RoomPrice) AS MinPrice,
    AVG(mm.RoomPrice) AS AvgPrice,
    MIN(mm.SeenAt) AS FirstSeen,
    MAX(mm.SeenAt) AS LastSeen
FROM [SalesOffice.MappingMisses] mm
LEFT JOIN Med_Hotels h ON h.HotelId = mm.HotelId
WHERE mm.SeenAt >= DATEADD(HOUR, -@hours, GETDATE())
  AND mm.Status = 'new'
GROUP BY mm.HotelId, h.[Name], h.Innstant_ZenithId, mm.RoomCategory, mm.RoomBoard
HAVING COUNT(*) >= @min_hits
ORDER BY COUNT(*) DESC;
"""

SQL_CHECK_MISSES_TABLE = """
SELECT COUNT(*) AS cnt
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'SalesOffice.MappingMisses';
"""

# ── Data Classes ────────────────────────────────────────────────────────────


@dataclass
class Config:
    connection_string: str | None
    input_ratebycat_csv: str | None
    input_details_csv: str | None
    threshold: int
    hotel_id: int | None
    apply: bool
    out_dir: str
    heuristic: bool  # v2: use heuristic mode (fill common categories) vs data-driven
    min_hits: int     # v2: minimum times a miss must appear before suggesting fix
    hours: int        # v2: lookback window in hours for MappingMisses
    allowlist: list | None  # v2: only process these hotel IDs (None = all)


@dataclass
class Gap:
    hotel_id: int
    hotel_name: str
    venue_id: int
    board_id: int
    board_code: str
    category_id: int
    category_name: str
    gap_type: str  # "A" or "B"
    suggested_rpc: str | None
    suggested_itc: str | None
    reason: str


@dataclass
class HotelReport:
    hotel_id: int
    hotel_name: str
    venue_id: int
    existing_combos: int
    mapped_boards: list = field(default_factory=list)
    gaps: list = field(default_factory=list)
    api_categories_seen: list = field(default_factory=list)
    api_boards_seen: list = field(default_factory=list)


# ── CLI ─────────────────────────────────────────────────────────────────────

def parse_args() -> Config:
    parser = argparse.ArgumentParser(
        description="SalesOffice Mapping Gap Analyzer v2 - identifies and fixes ratebycat gaps"
    )
    parser.add_argument("--connection-string", help="ODBC connection string to Azure SQL")
    parser.add_argument("--input-ratebycat-csv", help="CSV export of ratebycat query")
    parser.add_argument("--input-details-csv", help="CSV export of details combinations query")
    parser.add_argument("--threshold", type=int, default=80,
                        help="Mapping ratio threshold %% to flag hotels (default: 80)")
    parser.add_argument("--hotel-id", type=int, help="Analyze specific hotel only")
    parser.add_argument("--apply", action="store_true",
                        help="Actually execute INSERT statements (default: dry-run)")
    parser.add_argument("--out", default="report", help="Output directory (default: report)")
    # v2 arguments
    parser.add_argument("--heuristic", action="store_true",
                        help="Use heuristic mode (fill common categories). Default: data-driven from MappingMisses")
    parser.add_argument("--min-hits", type=int, default=3,
                        help="Minimum miss occurrences in window before suggesting fix (default: 3)")
    parser.add_argument("--hours", type=int, default=48,
                        help="Lookback window in hours for MappingMisses (default: 48)")
    parser.add_argument("--allowlist", type=str, default=None,
                        help="Comma-separated hotel IDs to process (default: all). Example: 6805,66814,24982")
    args = parser.parse_args()

    if not args.connection_string and not args.input_ratebycat_csv:
        raise SystemExit("Provide either --connection-string or --input-ratebycat-csv")
    if args.connection_string and pyodbc is None:
        raise SystemExit("pyodbc is required for --connection-string mode. Install: pip install pyodbc")

    allowlist = None
    if args.allowlist:
        allowlist = [int(x.strip()) for x in args.allowlist.split(",")]

    return Config(
        connection_string=args.connection_string,
        input_ratebycat_csv=args.input_ratebycat_csv,
        input_details_csv=args.input_details_csv,
        threshold=args.threshold,
        hotel_id=args.hotel_id,
        apply=args.apply,
        out_dir=args.out,
        heuristic=args.heuristic,
        min_hits=args.min_hits,
        hours=args.hours,
        allowlist=allowlist,
    )


# ── Data Loading ────────────────────────────────────────────────────────────

def load_from_db(connection_string: str):
    conn = pyodbc.connect(connection_string)
    try:
        df_rbc = pd.read_sql(SQL_RATEBYCAT, conn)
        df_details = pd.read_sql(SQL_DETAILS_COMBOS, conn)
        df_status = pd.read_sql(SQL_WEBJOB_STATUS, conn)
        df_hotels = pd.read_sql(SQL_ACTIVE_HOTELS, conn)
        return df_rbc, df_details, df_status, df_hotels
    finally:
        conn.close()


def check_misses_table_exists(connection_string: str) -> bool:
    """Check if SalesOffice.MappingMisses table exists in database."""
    conn = pyodbc.connect(connection_string)
    try:
        result = pd.read_sql(SQL_CHECK_MISSES_TABLE, conn)
        return int(result.iloc[0]["cnt"]) > 0
    except Exception:
        return False
    finally:
        conn.close()


def load_mapping_misses(connection_string: str, min_hits: int, hours: int) -> pd.DataFrame:
    """Load aggregated mapping misses from the MappingMisses table."""
    conn = pyodbc.connect(connection_string)
    try:
        # Replace parameters manually since pyodbc with pandas doesn't support named params well
        query = SQL_MAPPING_MISSES.replace("@hours", str(hours)).replace("@min_hits", str(min_hits))
        return pd.read_sql(query, conn)
    finally:
        conn.close()


def analyze_from_misses(df_misses: pd.DataFrame, df_rbc: pd.DataFrame,
                        allowlist: list | None) -> tuple:
    """
    Data-driven gap analysis using real MappingMisses data.
    Returns (reports, all_gaps).
    """
    reports = []
    all_gaps = []

    for _, miss_row in df_misses.iterrows():
        hotel_id = int(miss_row["HotelId"])
        hotel_name = str(miss_row.get("HotelName", f"Hotel {hotel_id}"))
        venue_id = int(miss_row.get("VenueId", 0))
        category_str = str(miss_row["RoomCategory"]).lower()
        board_str = str(miss_row["RoomBoard"]).upper()
        miss_count = int(miss_row["MissCount"])

        # Guardrail: allowlist filter
        if allowlist and hotel_id not in allowlist:
            continue

        # Check if this combination already exists in ratebycat
        existing = df_rbc[
            (df_rbc["HotelId"] == hotel_id) &
            (df_rbc["CategoryName"].str.lower() == category_str) &
            (df_rbc["BoardCode"].str.upper() == board_str)
        ]
        if not existing.empty:
            continue  # Already mapped, skip

        # Determine gap type
        board_id = BOARD_IDS.get(board_str)
        category_id = CATEGORY_IDS.get(category_str)

        if not board_id or not category_id:
            continue  # Unknown board or category name

        rpc = get_rpc_for_hotel_board(df_rbc, hotel_id, board_id)
        itc = get_itc_for_category(category_id)

        if rpc:
            gap_type = "A"
            reason = (f"API returns {category_str}/{board_str} {miss_count}x in window. "
                      f"Board {board_str} exists with RPC={rpc}. Auto-fixable.")
        else:
            gap_type = "B"
            reason = (f"API returns {category_str}/{board_str} {miss_count}x in window. "
                      f"Board {board_str} has NO RatePlanCode for this hotel. Needs Zenith setup.")

        gap = Gap(
            hotel_id=hotel_id,
            hotel_name=hotel_name,
            venue_id=venue_id,
            board_id=board_id,
            board_code=board_str,
            category_id=category_id,
            category_name=category_str,
            gap_type=gap_type,
            suggested_rpc=rpc,
            suggested_itc=itc if rpc else None,
            reason=reason,
        )
        all_gaps.append(gap)

        # Group into reports by hotel
        existing_report = next((r for r in reports if r.hotel_id == hotel_id), None)
        if not existing_report:
            hotel_rbc = df_rbc[df_rbc["HotelId"] == hotel_id]
            existing_report = HotelReport(
                hotel_id=hotel_id,
                hotel_name=hotel_name,
                venue_id=venue_id,
                existing_combos=len(hotel_rbc),
                mapped_boards=sorted(hotel_rbc["BoardId"].unique().tolist()) if not hotel_rbc.empty else [],
            )
            reports.append(existing_report)
        existing_report.gaps.append(gap)

    return reports, all_gaps


def load_from_csv(ratebycat_csv: str, details_csv: str | None):
    df_rbc = pd.read_csv(ratebycat_csv)
    df_details = pd.read_csv(details_csv) if details_csv else pd.DataFrame()
    df_status = pd.DataFrame()
    df_hotels = pd.DataFrame()
    return df_rbc, df_details, df_status, df_hotels


# ── Analysis ────────────────────────────────────────────────────────────────

def parse_mapping_ratio(status_text: str) -> tuple:
    """Parse WebJobStatus to extract ApiRooms and MappedRooms."""
    api_match = re.search(r"Innstant Api Rooms:\s*(\d+)", str(status_text))
    map_match = re.search(r"Rooms With Mapping:\s*(\d+)", str(status_text))
    api_rooms = int(api_match.group(1)) if api_match else 0
    mapped = int(map_match.group(1)) if map_match else 0
    return api_rooms, mapped


def get_rpc_for_hotel_board(df_rbc: pd.DataFrame, hotel_id: int, board_id: int) -> str | None:
    """Find existing RatePlanCode for a hotel+board combination."""
    matches = df_rbc[(df_rbc["HotelId"] == hotel_id) & (df_rbc["BoardId"] == board_id)]
    if matches.empty:
        return None
    return str(matches.iloc[0]["RatePlanCode"])


def get_itc_for_category(category_id: int) -> str:
    """Get InvTypeCode from category ID using the verified mapping."""
    return ITC_MAP.get(category_id, f"CAT{category_id}")


def analyze_hotel(hotel_id: int, hotel_name: str, venue_id: int,
                  df_rbc: pd.DataFrame, df_details: pd.DataFrame) -> HotelReport:
    """Analyze a single hotel for mapping gaps."""
    report = HotelReport(
        hotel_id=hotel_id,
        hotel_name=hotel_name,
        venue_id=venue_id,
        existing_combos=0,
    )

    # Current ratebycat state for this hotel
    hotel_rbc = df_rbc[df_rbc["HotelId"] == hotel_id]
    report.existing_combos = len(hotel_rbc)
    report.mapped_boards = sorted(hotel_rbc["BoardId"].unique().tolist())

    # What the system has successfully mapped (from Details)
    if not df_details.empty:
        hotel_details = df_details[df_details["HotelId"] == hotel_id]
        if not hotel_details.empty:
            report.api_categories_seen = sorted(hotel_details["RoomCategory"].str.lower().unique().tolist())
            report.api_boards_seen = sorted(hotel_details["RoomBoard"].str.upper().unique().tolist())

    # Build set of existing (BoardId, CategoryId) combos
    existing_combos = set()
    for _, row in hotel_rbc.iterrows():
        existing_combos.add((int(row["BoardId"]), int(row["CategoryId"])))

    # For each board that the hotel already has:
    #   Check if all common categories are covered
    common_categories = [1, 2, 4, 12]  # standard, superior, deluxe, suite

    for board_id in report.mapped_boards:
        board_code = BOARD_CODES.get(board_id, f"B{board_id}")
        for cat_id in common_categories:
            if (board_id, cat_id) not in existing_combos:
                cat_name = CATEGORY_NAMES.get(cat_id, f"cat{cat_id}")
                rpc = get_rpc_for_hotel_board(df_rbc, hotel_id, board_id)
                itc = get_itc_for_category(cat_id)
                report.gaps.append(Gap(
                    hotel_id=hotel_id,
                    hotel_name=hotel_name,
                    venue_id=venue_id,
                    board_id=board_id,
                    board_code=board_code,
                    category_id=cat_id,
                    category_name=cat_name,
                    gap_type="A",
                    suggested_rpc=rpc,
                    suggested_itc=itc,
                    reason=f"Board {board_code} exists for hotel but category {cat_name} is missing",
                ))

    # Check for boards seen in Details but not in ratebycat (Type B)
    for board_str in report.api_boards_seen:
        board_id = BOARD_IDS.get(board_str)
        if board_id and board_id not in report.mapped_boards:
            for cat_id in common_categories:
                cat_name = CATEGORY_NAMES.get(cat_id, f"cat{cat_id}")
                report.gaps.append(Gap(
                    hotel_id=hotel_id,
                    hotel_name=hotel_name,
                    venue_id=venue_id,
                    board_id=board_id,
                    board_code=board_str,
                    category_id=cat_id,
                    category_name=cat_name,
                    gap_type="B",
                    suggested_rpc=None,
                    suggested_itc=get_itc_for_category(cat_id),
                    reason=f"Board {board_str} seen in API results but has no RatePlanCode in ratebycat. "
                           f"Create RatePlan in Zenith (hotel.tools) first.",
                ))

    return report


# ── SQL Generation ──────────────────────────────────────────────────────────

def generate_insert_sql(gaps: list) -> str:
    """Generate SQL INSERT statements for Type A gaps."""
    lines = [
        "-- =============================================================",
        "-- SalesOffice Mapping Gap Fix - Auto-Generated",
        f"-- Generated: {datetime.now(timezone.utc).isoformat()}",
        "-- Type A gaps only (BoardId already exists for hotel)",
        "-- =============================================================",
        "",
        "BEGIN TRANSACTION;",
        "",
    ]

    type_a = [g for g in gaps if g.gap_type == "A" and g.suggested_rpc]
    for g in type_a:
        lines.append(f"-- {g.hotel_name} | {g.board_code}/{g.category_name}")
        lines.append(
            f"IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat "
            f"WHERE HotelId={g.hotel_id} AND BoardId={g.board_id} AND CategoryId={g.category_id})"
        )
        lines.append("BEGIN")
        lines.append(
            f"    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)"
        )
        lines.append(
            f"    VALUES ({g.hotel_id}, {g.board_id}, {g.category_id}, "
            f"'{g.suggested_rpc}', '{g.suggested_itc}');"
        )
        lines.append("END")
        lines.append("")

    lines.append("-- Verify results")
    hotel_ids = sorted({g.hotel_id for g in type_a})
    if hotel_ids:
        id_list = ", ".join(str(h) for h in hotel_ids)
        lines.append(f"SELECT * FROM Med_Hotels_ratebycat WHERE HotelId IN ({id_list}) ORDER BY HotelId, BoardId, CategoryId;")

    lines.append("")
    lines.append("COMMIT TRANSACTION;")
    return "\n".join(lines)


def generate_rollback_sql(gaps: list) -> str:
    """Generate rollback DELETE statements."""
    lines = [
        "-- =============================================================",
        "-- ROLLBACK - SalesOffice Mapping Gap Fix",
        f"-- Generated: {datetime.now(timezone.utc).isoformat()}",
        "-- WARNING: Only run this to undo the auto-generated INSERTs",
        "-- =============================================================",
        "",
        "BEGIN TRANSACTION;",
        "",
    ]

    type_a = [g for g in gaps if g.gap_type == "A" and g.suggested_rpc]
    for g in type_a:
        lines.append(f"-- Rollback: {g.hotel_name} | {g.board_code}/{g.category_name}")
        lines.append(
            f"DELETE FROM Med_Hotels_ratebycat "
            f"WHERE HotelId={g.hotel_id} AND BoardId={g.board_id} AND CategoryId={g.category_id} "
            f"AND RatePlanCode='{g.suggested_rpc}' AND InvTypeCode='{g.suggested_itc}';"
        )
        lines.append("")

    lines.append("COMMIT TRANSACTION;")
    return "\n".join(lines)


# ── Apply ───────────────────────────────────────────────────────────────────

def apply_inserts(connection_string: str, gaps: list) -> list:
    """Execute INSERT statements for Type A gaps. Returns list of results."""
    results = []
    type_a = [g for g in gaps if g.gap_type == "A" and g.suggested_rpc]

    if not type_a:
        return results

    conn = pyodbc.connect(connection_string)
    cursor = conn.cursor()

    try:
        for g in type_a:
            try:
                # Check existence first
                cursor.execute(
                    "SELECT COUNT(*) FROM Med_Hotels_ratebycat "
                    "WHERE HotelId=? AND BoardId=? AND CategoryId=?",
                    g.hotel_id, g.board_id, g.category_id,
                )
                count = cursor.fetchone()[0]

                if count > 0:
                    results.append({
                        "hotel_id": g.hotel_id, "board_id": g.board_id,
                        "category_id": g.category_id, "status": "SKIPPED",
                        "reason": "Already exists",
                    })
                    continue

                # Insert
                cursor.execute(
                    "INSERT INTO Med_Hotels_ratebycat "
                    "(HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode) "
                    "VALUES (?, ?, ?, ?, ?)",
                    g.hotel_id, g.board_id, g.category_id,
                    g.suggested_rpc, g.suggested_itc,
                )
                results.append({
                    "hotel_id": g.hotel_id, "board_id": g.board_id,
                    "category_id": g.category_id, "status": "INSERTED",
                    "rpc": g.suggested_rpc, "itc": g.suggested_itc,
                })

            except Exception as e:
                results.append({
                    "hotel_id": g.hotel_id, "board_id": g.board_id,
                    "category_id": g.category_id, "status": "ERROR",
                    "reason": str(e),
                })

        conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()

    return results


# ── Reports ─────────────────────────────────────────────────────────────────

def build_summary(reports: list, all_gaps: list) -> dict:
    """Build JSON summary of the analysis."""
    type_a = [g for g in all_gaps if g.gap_type == "A"]
    type_b = [g for g in all_gaps if g.gap_type == "B"]

    hotels_with_gaps = [r for r in reports if r.gaps]

    return {
        "generatedAtUtc": datetime.now(timezone.utc).isoformat(),
        "totalHotelsAnalyzed": len(reports),
        "hotelsWithGaps": len(hotels_with_gaps),
        "totalGaps": len(all_gaps),
        "typeA_autoFixable": len(type_a),
        "typeB_needsZenith": len(type_b),
        "gapsByHotel": [
            {
                "hotelId": r.hotel_id,
                "hotelName": r.hotel_name,
                "venueId": r.venue_id,
                "existingCombos": r.existing_combos,
                "mappedBoards": [BOARD_CODES.get(b, str(b)) for b in r.mapped_boards],
                "totalGaps": len(r.gaps),
                "typeAGaps": len([g for g in r.gaps if g.gap_type == "A"]),
                "typeBGaps": len([g for g in r.gaps if g.gap_type == "B"]),
                "gaps": [
                    {
                        "boardCode": g.board_code,
                        "categoryName": g.category_name,
                        "type": g.gap_type,
                        "suggestedRPC": g.suggested_rpc,
                        "suggestedITC": g.suggested_itc,
                        "reason": g.reason,
                    }
                    for g in r.gaps
                ],
            }
            for r in reports
            if r.gaps
        ],
    }


def write_gap_report_csv(all_gaps: list, out_path: str):
    """Write gap details to CSV."""
    rows = []
    for g in all_gaps:
        rows.append({
            "HotelId": g.hotel_id,
            "HotelName": g.hotel_name,
            "VenueId": g.venue_id,
            "BoardId": g.board_id,
            "BoardCode": g.board_code,
            "CategoryId": g.category_id,
            "CategoryName": g.category_name,
            "GapType": g.gap_type,
            "SuggestedRPC": g.suggested_rpc or "",
            "SuggestedITC": g.suggested_itc or "",
            "Reason": g.reason,
        })
    pd.DataFrame(rows).to_csv(out_path, index=False)


# ── Main ────────────────────────────────────────────────────────────────────

def safe_print(text: str):
    """Print with fallback for non-encodable characters."""
    try:
        print(text)
    except UnicodeEncodeError:
        print(text.encode("ascii", errors="replace").decode("ascii"))


def main():
    cfg = parse_args()
    os.makedirs(cfg.out_dir, exist_ok=True)

    # Load data
    print("Loading data...")
    if cfg.connection_string:
        df_rbc, df_details, df_status, df_hotels = load_from_db(cfg.connection_string)
    else:
        df_rbc, df_details, df_status, df_hotels = load_from_csv(
            cfg.input_ratebycat_csv, cfg.input_details_csv
        )

    print(f"  ratebycat rows: {len(df_rbc)}")
    print(f"  detail combos:  {len(df_details)}")
    print(f"  active hotels:  {len(df_hotels)}")

    # Decide mode: data-driven (MappingMisses) vs heuristic
    use_heuristic = cfg.heuristic or not cfg.connection_string
    if cfg.connection_string and not cfg.heuristic:
        has_misses = check_misses_table_exists(cfg.connection_string)
        if has_misses:
            print(f"\n  MappingMisses table found. Using DATA-DRIVEN mode.")
            print(f"  Window: {cfg.hours}h | Min hits: {cfg.min_hits}")
            if cfg.allowlist:
                print(f"  Allowlist: {cfg.allowlist}")
            use_heuristic = False
        else:
            print(f"\n  MappingMisses table NOT found. Falling back to HEURISTIC mode.")
            print(f"  (Deploy WebJob v2 + CREATE TABLE to enable data-driven mode)")
            use_heuristic = True

    if use_heuristic:
        # ── HEURISTIC MODE: fill common categories for existing boards ──
        print(f"\nMode: HEURISTIC (fills standard/superior/deluxe/suite for existing boards)")

        if cfg.hotel_id:
            hotel_ids = [cfg.hotel_id]
        elif cfg.allowlist:
            hotel_ids = cfg.allowlist
        else:
            hotel_ids = sorted(df_rbc["HotelId"].unique().tolist())

        print(f"Analyzing {len(hotel_ids)} hotels...")
        reports = []
        all_gaps = []

        for hid in hotel_ids:
            rbc_rows = df_rbc[df_rbc["HotelId"] == hid]
            if rbc_rows.empty:
                continue

            hotel_name = str(rbc_rows.iloc[0].get("HotelName", f"Hotel {hid}"))
            venue_id = int(rbc_rows.iloc[0].get("VenueId", 0))

            report = analyze_hotel(hid, hotel_name, venue_id, df_rbc, df_details)
            reports.append(report)
            all_gaps.extend(report.gaps)
    else:
        # ── DATA-DRIVEN MODE: use real MappingMisses data ──
        print(f"\nMode: DATA-DRIVEN (using SalesOffice.MappingMisses)")
        df_misses = load_mapping_misses(cfg.connection_string, cfg.min_hits, cfg.hours)
        print(f"  Unique unmapped combos (>={cfg.min_hits} hits in {cfg.hours}h): {len(df_misses)}")

        reports, all_gaps = analyze_from_misses(df_misses, df_rbc, cfg.allowlist)

    # Summary
    type_a = [g for g in all_gaps if g.gap_type == "A"]
    type_b = [g for g in all_gaps if g.gap_type == "B"]
    hotels_with_gaps = [r for r in reports if r.gaps]

    print(f"\n{'='*60}")
    print(f"RESULTS")
    print(f"{'='*60}")
    print(f"Hotels analyzed:    {len(reports)}")
    print(f"Hotels with gaps:   {len(hotels_with_gaps)}")
    print(f"Total gaps found:   {len(all_gaps)}")
    print(f"  Type A (auto-fix): {len(type_a)}")
    print(f"  Type B (manual):   {len(type_b)}")
    print()

    # Print gap details
    for r in reports:
        if not r.gaps:
            continue
        safe_print(f"\n--- {r.hotel_name} (HID={r.hotel_id}, Venue={r.venue_id}) ---")
        safe_print(f"    Existing combos: {r.existing_combos}")
        safe_print(f"    Mapped boards: {[BOARD_CODES.get(b, str(b)) for b in r.mapped_boards]}")
        for g in r.gaps:
            marker = "FIX" if g.gap_type == "A" else "MANUAL"
            rpc_info = f" -> RPC={g.suggested_rpc} ITC={g.suggested_itc}" if g.suggested_rpc else ""
            safe_print(f"    [{marker}] {g.board_code}/{g.category_name}{rpc_info}")

    # Generate outputs
    summary = build_summary(reports, all_gaps)

    # Write summary JSON
    summary_path = os.path.join(cfg.out_dir, "summary.json")
    with open(summary_path, "w", encoding="utf-8") as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)
    print(f"\nSummary: {summary_path}")

    # Write gap CSV
    if all_gaps:
        csv_path = os.path.join(cfg.out_dir, "gaps.csv")
        write_gap_report_csv(all_gaps, csv_path)
        print(f"Gap CSV: {csv_path}")

    # Generate SQL
    if type_a:
        fix_sql = generate_insert_sql(all_gaps)
        fix_path = os.path.join(cfg.out_dir, "fix_mapping_gaps.sql")
        with open(fix_path, "w", encoding="utf-8") as f:
            f.write(fix_sql)
        print(f"Fix SQL: {fix_path}")

        rollback_sql = generate_rollback_sql(all_gaps)
        rollback_path = os.path.join(cfg.out_dir, "rollback_mapping_gaps.sql")
        with open(rollback_path, "w", encoding="utf-8") as f:
            f.write(rollback_sql)
        print(f"Rollback SQL: {rollback_path}")

    # Apply if requested
    if cfg.apply and cfg.connection_string and type_a:
        print(f"\n{'='*60}")
        print(f"APPLYING {len(type_a)} Type A fixes...")
        print(f"{'='*60}")
        results = apply_inserts(cfg.connection_string, all_gaps)

        inserted = [r for r in results if r["status"] == "INSERTED"]
        skipped = [r for r in results if r["status"] == "SKIPPED"]
        errors = [r for r in results if r["status"] == "ERROR"]

        print(f"  Inserted: {len(inserted)}")
        print(f"  Skipped (already exist): {len(skipped)}")
        print(f"  Errors: {len(errors)}")

        for err in errors:
            print(f"    ERROR: HID={err['hotel_id']} B={err['board_id']} C={err['category_id']}: {err['reason']}")

        # Save apply results
        apply_path = os.path.join(cfg.out_dir, "apply_results.json")
        with open(apply_path, "w", encoding="utf-8") as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
        print(f"Apply results: {apply_path}")

    elif cfg.apply and not cfg.connection_string:
        print("\nCannot --apply without --connection-string")
    elif type_a and not cfg.apply:
        print(f"\nDry run complete. Use --apply to execute {len(type_a)} INSERT statements.")

    print("\nDone.")


if __name__ == "__main__":
    main()
