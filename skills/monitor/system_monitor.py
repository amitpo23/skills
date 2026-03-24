"""
System Monitor Skill - Full monitoring of Medici booking engine

Monitors all systems, skills, WebJobs, tables, and processes.
Provides health checks, alerts, and detailed diagnostics.

Usage:
    python system_monitor.py --connection-string "..." --full
    python system_monitor.py --connection-string "..." --check webjob
    python system_monitor.py --connection-string "..." --check tables
    python system_monitor.py --connection-string "..." --check skills
    python system_monitor.py --connection-string "..." --check mapping
    python system_monitor.py --connection-string "..." --check orders
    python system_monitor.py --connection-string "..." --check zenith
    python system_monitor.py --connection-string "..." --alert-only
"""

import argparse
import json
import os
import re
import sys
import time
from datetime import datetime, timedelta

import pyodbc
import requests


# ═══════════════════════════════════════════════════════════════
# CONFIG
# ═══════════════════════════════════════════════════════════════

ZENITH_URL = "https://hotel.tools/service/Medici%20new"
ZENITH_USERNAME = "APIMedici:Medici Live"
ZENITH_PASSWORD = "12345"

ALERT_THRESHOLDS = {
    "webjob_stale_minutes": 30,
    "mapping_miss_rate_per_hour": 10,
    "order_detail_gap_pct": 5,
    "override_failure_pct": 20,
    "table_growth_alert_rows": 10000,
    "scan_cycle_max_hours": 24,
}


# ═══════════════════════════════════════════════════════════════
# MONITOR CLASS
# ═══════════════════════════════════════════════════════════════

class SystemMonitor:
    def __init__(self, connection_string):
        self.conn = pyodbc.connect(connection_string)
        self.cursor = self.conn.cursor()
        self.results = {}
        self.alerts = []

    def _alert(self, severity, component, message):
        self.alerts.append({
            "severity": severity,
            "component": component,
            "message": message,
            "timestamp": datetime.now().isoformat(),
        })

    # ── 1. WEBJOB HEALTH ─────────────────────────────────────

    def check_webjob(self):
        """Check WebJob processing health"""
        checks = {}

        # Last activity - check BOTH Log and In Progress orders
        self.cursor.execute("SELECT TOP 1 SalesOfficeOrderId, DateCreated FROM [SalesOffice.Log] ORDER BY Id DESC")
        row = self.cursor.fetchone()
        if row:
            last_log_time = row[1]
            checks["last_log"] = {
                "order_id": row[0],
                "time": str(last_log_time)[:19],
                "minutes_ago": round((datetime.now() - last_log_time).total_seconds() / 60, 1),
            }

        # Check In Progress orders (more reliable than Log)
        self.cursor.execute("""
            SELECT TOP 1 Id, WebJobStatus FROM [SalesOffice.Orders]
            WHERE WebJobStatus LIKE '%In Progress%' AND Id > 26
            ORDER BY Id DESC
        """)
        ip_row = self.cursor.fetchone()
        if ip_row:
            # Extract timestamp from "In Progress (20.03.2026 16:42:47)"
            import re
            m = re.search(r'\((\d{2}\.\d{2}\.\d{4}\s+\d{2}:\d{2}:\d{2})\)', str(ip_row[1]))
            if m:
                ip_time = datetime.strptime(m.group(1), "%d.%m.%Y %H:%M:%S")
                ip_minutes = (datetime.now() - ip_time).total_seconds() / 60
                checks["last_in_progress"] = {
                    "order_id": ip_row[0],
                    "time": m.group(1),
                    "minutes_ago": round(ip_minutes, 1),
                }

        # Determine if WebJob is truly stale
        latest_activity_minutes = 999
        if row:
            latest_activity_minutes = min(latest_activity_minutes, (datetime.now() - last_log_time).total_seconds() / 60)
        if ip_row and checks.get("last_in_progress"):
            latest_activity_minutes = min(latest_activity_minutes, checks["last_in_progress"]["minutes_ago"])

        checks["latest_activity_minutes"] = round(latest_activity_minutes, 1)
        if latest_activity_minutes > ALERT_THRESHOLDS["webjob_stale_minutes"]:
            self._alert("CRITICAL", "WebJob", f"No activity for {latest_activity_minutes:.0f} minutes")

        if not row and not ip_row:
            self._alert("CRITICAL", "WebJob", "No log entries or In Progress orders found")

        # In Progress orders
        self.cursor.execute("""
            SELECT o.Id, o.DestinationId, h.[Name], o.WebJobStatus
            FROM [SalesOffice.Orders] o
            LEFT JOIN Med_Hotels h ON h.HotelId = CAST(o.DestinationId AS INT)
            WHERE o.WebJobStatus LIKE '%In Progress%' AND o.Id > 26
        """)
        in_progress = []
        for r in self.cursor.fetchall():
            name = str(r[2]) if r[2] else f"Hotel {r[1]}"
            in_progress.append({"order_id": r[0], "hotel": name})
        checks["in_progress"] = in_progress

        # Pending orders
        self.cursor.execute("SELECT COUNT(*) FROM [SalesOffice.Orders] WHERE WebJobStatus IS NULL AND IsActive=1")
        pending = self.cursor.fetchone()[0]
        checks["pending_orders"] = pending

        # Failed orders (last 24h)
        self.cursor.execute("""
            SELECT COUNT(*) FROM [SalesOffice.Orders]
            WHERE WebJobStatus LIKE '%Failed%' AND IsActive=1
        """)
        failed = self.cursor.fetchone()[0]
        checks["failed_orders"] = failed
        if failed > 0:
            self._alert("WARNING", "WebJob", f"{failed} failed orders")

        # Scan cycle estimate
        self.cursor.execute("SELECT COUNT(*) FROM [SalesOffice.Orders] WHERE IsActive=1")
        total_active = self.cursor.fetchone()[0]
        cycle_hours = total_active * 30 / 3600
        checks["active_orders"] = total_active
        checks["estimated_cycle_hours"] = round(cycle_hours, 1)
        if cycle_hours > ALERT_THRESHOLDS["scan_cycle_max_hours"]:
            self._alert("WARNING", "WebJob", f"Scan cycle estimated {cycle_hours:.0f}h (threshold: {ALERT_THRESHOLDS['scan_cycle_max_hours']}h)")

        self.results["webjob"] = checks
        return checks

    # ── 2. TABLE HEALTH ───────────────────────────────────────

    def check_tables(self):
        """Check all SalesOffice tables"""
        tables = {}

        table_queries = {
            "SalesOffice.Orders": "SELECT COUNT(*), SUM(CASE WHEN IsActive=1 THEN 1 ELSE 0 END) FROM [SalesOffice.Orders]",
            "SalesOffice.Details": "SELECT COUNT(*), SUM(CASE WHEN IsDeleted=0 THEN 1 ELSE 0 END) FROM [SalesOffice.Details]",
            "SalesOffice.MappingMisses": "SELECT COUNT(*), SUM(CASE WHEN Status='new' THEN 1 ELSE 0 END) FROM [SalesOffice.MappingMisses]",
            "SalesOffice.PriceOverride": "SELECT COUNT(*), SUM(CASE WHEN IsActive=1 THEN 1 ELSE 0 END) FROM [SalesOffice.PriceOverride]",
            "SalesOffice.Log": "SELECT COUNT(*), NULL FROM [SalesOffice.Log]",
            "Med_Hotels_ratebycat": "SELECT COUNT(*), NULL FROM Med_Hotels_ratebycat",
            "BackOfficeOPT": "SELECT COUNT(*), SUM(CASE WHEN Status=1 THEN 1 ELSE 0 END) FROM BackOfficeOPT",
            "MED_Book": "SELECT COUNT(*), SUM(CASE WHEN IsActive=1 THEN 1 ELSE 0 END) FROM MED_Book",
            "MED_CancelBook": "SELECT COUNT(*), NULL FROM MED_CancelBook",
            "MED_CancelBookError": "SELECT COUNT(*), NULL FROM MED_CancelBookError",
        }

        for table, query in table_queries.items():
            try:
                self.cursor.execute(query)
                row = self.cursor.fetchone()
                tables[table] = {"total": row[0], "active": row[1]}
            except Exception as e:
                tables[table] = {"error": str(e)[:80]}
                self._alert("ERROR", "Tables", f"Cannot query {table}: {str(e)[:60]}")

        self.results["tables"] = tables
        return tables

    # ── 3. MAPPING HEALTH ─────────────────────────────────────

    def check_mapping(self):
        """Check mapping quality across all hotels"""
        checks = {}

        # Hotels with active orders
        self.cursor.execute("""
            SELECT DISTINCT o.DestinationId, h.[Name]
            FROM [SalesOffice.Orders] o
            LEFT JOIN Med_Hotels h ON h.HotelId = CAST(o.DestinationId AS INT)
            WHERE o.IsActive = 1
        """)
        active_hotels = self.cursor.fetchall()
        checks["active_hotels"] = len(active_hotels)

        # ratebycat coverage
        self.cursor.execute("""
            SELECT COUNT(DISTINCT HotelId) FROM Med_Hotels_ratebycat
        """)
        hotels_with_rbc = self.cursor.fetchone()[0]
        checks["hotels_with_ratebycat"] = hotels_with_rbc

        # Hotels with BB
        self.cursor.execute("""
            SELECT COUNT(DISTINCT HotelId) FROM Med_Hotels_ratebycat WHERE BoardId = 2
        """)
        hotels_with_bb = self.cursor.fetchone()[0]
        checks["hotels_with_bb"] = hotels_with_bb

        # Open mapping misses
        self.cursor.execute("""
            SELECT HotelId, RoomCategory, RoomBoard, COUNT(*) as Hits
            FROM [SalesOffice.MappingMisses]
            WHERE Status = 'new'
            GROUP BY HotelId, RoomCategory, RoomBoard
        """)
        misses = []
        for r in self.cursor.fetchall():
            misses.append({"hotel_id": r[0], "category": r[1], "board": r[2], "hits": r[3]})
        checks["open_misses"] = misses
        if len(misses) > 0:
            self._alert("INFO", "Mapping", f"{len(misses)} open mapping misses")

        # Miss rate (last hour)
        self.cursor.execute("""
            SELECT COUNT(*) FROM [SalesOffice.MappingMisses]
            WHERE SeenAt >= DATEADD(HOUR, -1, GETDATE())
        """)
        miss_rate = self.cursor.fetchone()[0]
        checks["miss_rate_last_hour"] = miss_rate
        if miss_rate > ALERT_THRESHOLDS["mapping_miss_rate_per_hour"]:
            self._alert("WARNING", "Mapping", f"High miss rate: {miss_rate}/hour")

        # ORDER = DETAIL check per hotel
        order_detail_gaps = []
        for hid_str, hname in active_hotels:
            hid = int(hid_str)
            name = str(hname) if hname else f"Hotel {hid}"

            self.cursor.execute("SELECT COUNT(*) FROM [SalesOffice.Orders] WHERE DestinationId=? AND IsActive=1", hid_str)
            total = self.cursor.fetchone()[0]

            self.cursor.execute("""
                SELECT COUNT(*) FROM [SalesOffice.Orders] o
                WHERE o.DestinationId=? AND o.IsActive=1
                AND EXISTS (SELECT 1 FROM [SalesOffice.Details] d WHERE d.SalesOfficeOrderId=o.Id AND d.IsDeleted=0)
            """, hid_str)
            with_det = self.cursor.fetchone()[0]

            self.cursor.execute("""
                SELECT COUNT(*) FROM [SalesOffice.Orders]
                WHERE DestinationId=? AND IsActive=1
                AND (WebJobStatus LIKE '%Api Rooms: 0%' OR WebJobStatus LIKE '%Api: 0%')
            """, hid_str)
            api_zero = self.cursor.fetchone()[0]

            self.cursor.execute("SELECT COUNT(*) FROM [SalesOffice.Orders] WHERE DestinationId=? AND IsActive=1 AND WebJobStatus IS NULL", hid_str)
            null_count = self.cursor.fetchone()[0]

            gap = total - with_det - api_zero - null_count
            if gap > 0:
                order_detail_gaps.append({"hotel": name[:30], "hotel_id": hid, "gap": gap, "total": total})

        checks["order_detail_gaps"] = order_detail_gaps
        if order_detail_gaps:
            self._alert("WARNING", "Mapping", f"{len(order_detail_gaps)} hotels with ORDER!=DETAIL gaps")

        self.results["mapping"] = checks
        return checks

    # ── 4. SKILLS HEALTH ──────────────────────────────────────

    def check_skills(self):
        """Check health of all skills"""
        checks = {}

        # autofix_worker - last run
        checks["autofix_worker"] = self._check_skill_audit(
            "salesoffice-mapping-gap-skill/autofix-report",
            "autofix_worker"
        )

        # Price Override - active overrides
        self.cursor.execute("""
            SELECT COUNT(*),
                SUM(CASE WHEN IsActive=1 AND PushStatus IS NULL THEN 1 ELSE 0 END),
                SUM(CASE WHEN IsActive=1 AND PushStatus='success' THEN 1 ELSE 0 END),
                SUM(CASE WHEN PushStatus='failed' THEN 1 ELSE 0 END)
            FROM [SalesOffice.PriceOverride]
        """)
        r = self.cursor.fetchone()
        checks["price_override"] = {
            "total": r[0], "pending": r[1] or 0, "pushed": r[2] or 0, "failed": r[3] or 0,
        }
        if r[3] and r[0] and r[3] / r[0] * 100 > ALERT_THRESHOLDS["override_failure_pct"]:
            self._alert("WARNING", "PriceOverride", f"{r[3]} failed overrides ({r[3]/r[0]*100:.0f}%)")

        # Insert Opp - recent activity
        self.cursor.execute("""
            SELECT COUNT(*),
                SUM(CASE WHEN Status=1 THEN 1 ELSE 0 END)
            FROM BackOfficeOPT
            WHERE DateInsert >= DATEADD(DAY, -1, GETDATE())
        """)
        r = self.cursor.fetchone()
        checks["insert_opp"] = {"last_24h": r[0], "active": r[1] or 0}

        # LastPriceUpdate - cycle health + rebuy activity
        self.cursor.execute("""
            SELECT MAX(DateLastPrice),
                COUNT(CASE WHEN DateLastPrice >= CAST(GETDATE() AS DATE) THEN 1 END)
            FROM MED_Book WHERE DateLastPrice IS NOT NULL
        """)
        r = self.cursor.fetchone()
        last_update = r[0]
        today_updates = r[1] or 0
        lpu = {"last_cycle": str(last_update)[:19] if last_update else None, "updates_today": today_updates}

        if last_update:
            if isinstance(last_update, datetime):
                hours_ago = (datetime.now() - last_update).total_seconds() / 3600
            else:
                hours_ago = (datetime.now().date() - last_update).total_seconds() / 3600 if hasattr(last_update, 'total_seconds') else 0
            lpu["hours_ago"] = round(hours_ago, 1)
            if hours_ago > 8:
                self._alert("WARNING", "LastPriceUpdate", f"No updates for {hours_ago:.0f} hours (cycle=6h)")

        # Rebuy activity
        self.cursor.execute("""
            SELECT COUNT(*) FROM MED_CancelBook
            WHERE CancellationReason = 'Cancelled By Last Price Update Job'
            AND DateInsert >= DATEADD(DAY, -7, GETDATE())
        """)
        lpu["rebuys_7d"] = self.cursor.fetchone()[0]

        # Active books with price analysis
        self.cursor.execute("""
            SELECT
                COUNT(*) as Total,
                SUM(CASE WHEN lastPrice > price THEN 1 ELSE 0 END) as PriceUp,
                SUM(CASE WHEN lastPrice < price THEN 1 ELSE 0 END) as PriceDown,
                AVG(lastPrice - price) as AvgDiff
            FROM MED_Book
            WHERE lastPrice IS NOT NULL AND IsActive = 1
        """)
        r = self.cursor.fetchone()
        lpu["price_up"] = r[1] or 0
        lpu["price_down"] = r[2] or 0
        lpu["avg_savings"] = round(float(r[3]), 2) if r[3] else 0

        # Rebuy candidates (>10% cheaper, unsold)
        self.cursor.execute("""
            SELECT COUNT(*) FROM MED_Book
            WHERE IsActive = 1 AND IsSold = 0
            AND lastPrice IS NOT NULL AND lastPrice < price
            AND (price / lastPrice * 100) - 100 > 10
        """)
        lpu["rebuy_candidates"] = self.cursor.fetchone()[0]
        if lpu["rebuy_candidates"] > 0:
            self._alert("INFO", "LastPriceUpdate", f"{lpu['rebuy_candidates']} bookings eligible for rebuy (>10% cheaper)")

        checks["lastprice_update"] = lpu

        self.results["skills"] = checks
        return checks

    def _check_skill_audit(self, report_dir, skill_name):
        """Check last audit file for a skill"""
        base = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), report_dir)
        if not os.path.exists(base):
            return {"status": "no_report_dir"}
        files = sorted([f for f in os.listdir(base) if f.endswith(".json")], reverse=True)
        if not files:
            return {"status": "no_audit_files"}
        latest = files[0]
        mtime = os.path.getmtime(os.path.join(base, latest))
        age_min = (time.time() - mtime) / 60
        return {"last_file": latest, "age_minutes": round(age_min, 1)}

    # ── 5. ORDERS HEALTH ─────────────────────────────────────

    def check_orders(self):
        """Check SalesOffice orders health"""
        checks = {}

        # Active hotels and orders
        self.cursor.execute("""
            SELECT COUNT(DISTINCT DestinationId), COUNT(*)
            FROM [SalesOffice.Orders] WHERE IsActive = 1
        """)
        r = self.cursor.fetchone()
        checks["active_hotels"] = r[0]
        checks["active_orders"] = r[1]

        # Status breakdown
        self.cursor.execute("""
            SELECT
                SUM(CASE WHEN WebJobStatus IS NULL THEN 1 ELSE 0 END),
                SUM(CASE WHEN WebJobStatus LIKE '%Completed%' THEN 1 ELSE 0 END),
                SUM(CASE WHEN WebJobStatus LIKE '%In Progress%' THEN 1 ELSE 0 END),
                SUM(CASE WHEN WebJobStatus LIKE '%Failed%' THEN 1 ELSE 0 END),
                SUM(CASE WHEN WebJobStatus LIKE '%DateRange%' THEN 1 ELSE 0 END)
            FROM [SalesOffice.Orders] WHERE IsActive = 1
        """)
        r = self.cursor.fetchone()
        checks["status"] = {
            "null_pending": r[0] or 0, "completed": r[1] or 0,
            "in_progress": r[2] or 0, "failed": r[3] or 0,
            "date_error": r[4] or 0,
        }

        # Details breakdown
        self.cursor.execute("""
            SELECT
                SUM(CASE WHEN RoomBoard='RO' AND IsDeleted=0 THEN 1 ELSE 0 END),
                SUM(CASE WHEN RoomBoard='BB' AND IsDeleted=0 THEN 1 ELSE 0 END),
                SUM(CASE WHEN IsDeleted=0 THEN 1 ELSE 0 END)
            FROM [SalesOffice.Details]
        """)
        r = self.cursor.fetchone()
        checks["details"] = {"ro": r[0] or 0, "bb": r[1] or 0, "total": r[2] or 0}

        # Archive tables
        for archive in ["SalesOffice.Orders_Deleted_20260319", "SalesOffice.Details_Deleted_20260319"]:
            try:
                self.cursor.execute(f"SELECT COUNT(*) FROM [{archive}]")
                checks[f"archive_{archive.split('_')[0].split('.')[-1].lower()}"] = self.cursor.fetchone()[0]
            except:
                pass

        self.results["orders"] = checks
        return checks

    # ── 6. ZENITH HEALTH ──────────────────────────────────────

    def check_zenith(self):
        """Check Zenith API connectivity"""
        checks = {}

        # Probe with a known venue
        soap = f'''<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
  <SOAP-ENV:Header><wsse:Security soap:mustUnderstand="1" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><wsse:UsernameToken><wsse:Username>{ZENITH_USERNAME}</wsse:Username><wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">{ZENITH_PASSWORD}</wsse:Password></wsse:UsernameToken></wsse:Security></SOAP-ENV:Header>
  <SOAP-ENV:Body><OTA_HotelAvailNotifRQ xmlns="http://www.opentravel.org/OTA/2003/05" Version="1.0" TimeStamp="{datetime.now().isoformat()}" EchoToken="monitor"><AvailStatusMessages HotelCode="5093"><AvailStatusMessage BookingLimit="0"><StatusApplicationControl Start="2026-12-31" End="2026-12-31" InvTypeCode="Stnd" RatePlanCode="12062"/><RestrictionStatus Status="Open" /></AvailStatusMessage></AvailStatusMessages></OTA_HotelAvailNotifRQ></SOAP-ENV:Body></SOAP-ENV:Envelope>'''

        try:
            start = time.time()
            resp = requests.post(ZENITH_URL, data=soap, headers={"Content-Type": "text/xml"}, timeout=15)
            latency = (time.time() - start) * 1000
            success = resp.status_code == 200 and "Error" not in resp.text
            checks["status"] = "OK" if success else "ERROR"
            checks["latency_ms"] = round(latency, 0)
            checks["http_status"] = resp.status_code
            if not success:
                self._alert("CRITICAL", "Zenith", f"Zenith API error: HTTP {resp.status_code}")
        except Exception as e:
            checks["status"] = "UNREACHABLE"
            checks["error"] = str(e)[:100]
            self._alert("CRITICAL", "Zenith", f"Zenith unreachable: {str(e)[:60]}")

        self.results["zenith"] = checks
        return checks

    # ── 7. AUTO-CANCELLATION HEALTH ───────────────────────────

    def check_cancellation(self):
        """Check auto-cancellation system"""
        checks = {}

        # Active bookings approaching CX deadline
        self.cursor.execute("""
            SELECT COUNT(*) FROM MED_Book
            WHERE IsActive = 1 AND CancellationTo <= DATEADD(DAY, 5, GETDATE())
        """)
        upcoming = self.cursor.fetchone()[0]
        checks["bookings_near_cx_deadline"] = upcoming
        if upcoming > 10:
            self._alert("INFO", "Cancellation", f"{upcoming} bookings within 5 days of CX deadline")

        # Recent cancellations (24h)
        self.cursor.execute("""
            SELECT COUNT(*) FROM MED_CancelBook
            WHERE DateInsert >= DATEADD(DAY, -1, GETDATE())
        """)
        checks["cancellations_24h"] = self.cursor.fetchone()[0]

        # Cancel errors (24h)
        self.cursor.execute("""
            SELECT COUNT(*) FROM MED_CancelBookError
            WHERE DateInsert >= DATEADD(DAY, -1, GETDATE())
        """)
        errors = self.cursor.fetchone()[0]
        checks["cancel_errors_24h"] = errors
        if errors > 0:
            self._alert("WARNING", "Cancellation", f"{errors} cancellation errors in last 24h")

        # Total active bookings
        self.cursor.execute("SELECT COUNT(*) FROM MED_Book WHERE IsActive = 1")
        checks["active_bookings"] = self.cursor.fetchone()[0]

        self.results["cancellation"] = checks
        return checks

    # ── FULL REPORT ───────────────────────────────────────────

    def run_full(self):
        """Run all checks"""
        self.check_webjob()
        self.check_tables()
        self.check_mapping()
        self.check_skills()
        self.check_orders()
        self.check_zenith()
        self.check_cancellation()
        return self.results

    # ── OUTPUT ────────────────────────────────────────────────

    def print_report(self, alert_only=False):
        """Print formatted report"""
        if alert_only:
            if not self.alerts:
                print("NO ALERTS - all systems healthy")
            else:
                print(f"=== {len(self.alerts)} ALERTS ===")
                for a in self.alerts:
                    print(f"  [{a['severity']}] {a['component']}: {a['message']}")
            return

        print("=" * 60)
        print(f"  SYSTEM MONITOR - {datetime.now().strftime('%Y-%m-%d %H:%M')}")
        print("=" * 60)

        # Alerts first
        if self.alerts:
            print(f"\n{'!'*60}")
            print(f"  {len(self.alerts)} ALERT(S)")
            print(f"{'!'*60}")
            for a in self.alerts:
                icon = {"CRITICAL": "!!!", "WARNING": " ! ", "ERROR": "ERR", "INFO": " i "}.get(a["severity"], "???")
                print(f"  [{icon}] {a['component']}: {a['message']}")

        # WebJob
        if "webjob" in self.results:
            wj = self.results["webjob"]
            print(f"\n--- WebJob ---")
            if wj.get("last_log"):
                print(f"  Last activity: {wj['last_log']['minutes_ago']:.0f}m ago (Order {wj['last_log']['order_id']})")
            print(f"  Pending: {wj.get('pending_orders', '?')} | Failed: {wj.get('failed_orders', '?')}")
            print(f"  Active orders: {wj.get('active_orders', '?')} | Cycle: ~{wj.get('estimated_cycle_hours', '?')}h")

        # Tables
        if "tables" in self.results:
            print(f"\n--- Tables ---")
            for name, info in self.results["tables"].items():
                if "error" in info:
                    print(f"  {name:40} ERROR: {info['error']}")
                else:
                    active = f" (active={info['active']})" if info['active'] is not None else ""
                    print(f"  {name:40} {info['total']:>7} rows{active}")

        # Mapping
        if "mapping" in self.results:
            m = self.results["mapping"]
            print(f"\n--- Mapping ---")
            print(f"  Hotels: {m.get('active_hotels', '?')} active | {m.get('hotels_with_bb', '?')} with BB")
            print(f"  Miss rate: {m.get('miss_rate_last_hour', '?')}/hour")
            gaps = m.get("order_detail_gaps", [])
            if gaps:
                print(f"  ORDER!=DETAIL gaps: {len(gaps)} hotels")
                for g in gaps[:5]:
                    print(f"    {g['hotel']}: {g['gap']} gaps / {g['total']} orders")
            else:
                print(f"  ORDER=DETAIL: ALL PASS")

        # Skills
        if "skills" in self.results:
            s = self.results["skills"]
            print(f"\n--- Skills ---")
            po = s.get("price_override", {})
            print(f"  PriceOverride: {po.get('total', 0)} total | {po.get('pushed', 0)} pushed | {po.get('failed', 0)} failed")
            io = s.get("insert_opp", {})
            print(f"  InsertOpp: {io.get('last_24h', 0)} last 24h | {io.get('active', 0)} active")
            lpu = s.get("lastprice_update", {})
            print(f"  LastPriceUpdate: {lpu.get('updates_today', '?')} updates today | last cycle {lpu.get('hours_ago', '?')}h ago")
            print(f"    Savings: {lpu.get('price_up', '?')} up / {lpu.get('price_down', '?')} down | avg ${lpu.get('avg_savings', '?')}")
            print(f"    Rebuys (7d): {lpu.get('rebuys_7d', '?')} | Candidates: {lpu.get('rebuy_candidates', '?')}")

        # Orders
        if "orders" in self.results:
            o = self.results["orders"]
            print(f"\n--- Orders & Details ---")
            print(f"  Hotels: {o.get('active_hotels', '?')} | Orders: {o.get('active_orders', '?')}")
            d = o.get("details", {})
            print(f"  Details: RO={d.get('ro', '?')} BB={d.get('bb', '?')} Total={d.get('total', '?')}")

        # Zenith
        if "zenith" in self.results:
            z = self.results["zenith"]
            print(f"\n--- Zenith API ---")
            print(f"  Status: {z.get('status', '?')} | Latency: {z.get('latency_ms', '?')}ms")

        # Cancellation
        if "cancellation" in self.results:
            c = self.results["cancellation"]
            print(f"\n--- Auto-Cancellation ---")
            print(f"  Active bookings: {c.get('active_bookings', '?')}")
            print(f"  Near CX deadline: {c.get('bookings_near_cx_deadline', '?')}")
            print(f"  Cancelled 24h: {c.get('cancellations_24h', '?')} | Errors: {c.get('cancel_errors_24h', '?')}")

        print(f"\n{'=' * 60}")
        print(f"  {len(self.alerts)} alerts | {datetime.now().strftime('%H:%M:%S')}")
        print(f"{'=' * 60}")

    def save_report(self, output_dir):
        os.makedirs(output_dir, exist_ok=True)
        report = {
            "timestamp": datetime.now().isoformat(),
            "results": self.results,
            "alerts": self.alerts,
        }
        path = os.path.join(output_dir, f"monitor-{datetime.now().strftime('%Y%m%d_%H%M%S')}.json")
        with open(path, "w") as f:
            json.dump(report, f, indent=2, default=str)
        return path

    def close(self):
        self.conn.close()


# ═══════════════════════════════════════════════════════════════
# CLI
# ═══════════════════════════════════════════════════════════════

def main():
    parser = argparse.ArgumentParser(description="System Monitor")
    parser.add_argument("--connection-string", required=True)
    parser.add_argument("--full", action="store_true", help="Run all checks")
    parser.add_argument("--check", choices=["webjob", "tables", "skills", "mapping", "orders", "zenith", "cancellation"])
    parser.add_argument("--alert-only", action="store_true", help="Show only alerts")
    parser.add_argument("--out", default="monitor-report")
    parser.add_argument("--json", action="store_true", help="Output as JSON")
    args = parser.parse_args()

    monitor = SystemMonitor(args.connection_string)

    try:
        if args.full or args.alert_only:
            monitor.run_full()
        elif args.check:
            getattr(monitor, f"check_{args.check}")()
        else:
            monitor.run_full()

        if args.json:
            print(json.dumps({"results": monitor.results, "alerts": monitor.alerts}, indent=2, default=str))
        else:
            monitor.print_report(alert_only=args.alert_only)

        report_path = monitor.save_report(args.out)

    finally:
        monitor.close()


if __name__ == "__main__":
    main()
