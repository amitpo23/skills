"""
COWORK Reconcile - Compare COWORK Playwright scans with SalesOffice DB

Reads JSON scan files from /cowork-scans/ directory and compares
against SalesOffice.Details to find gaps, price differences, and
mapping issues.

Usage:
    # Check new scans and compare
    python cowork_reconcile.py --connection-string "..." --check

    # Full report
    python cowork_reconcile.py --connection-string "..." --report

    # Process and move to processed/
    python cowork_reconcile.py --connection-string "..." --process
"""

import argparse
import json
import os
import sys
from datetime import datetime
from pathlib import Path

import pyodbc

SCANS_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))), "cowork-scans")
PROCESSED_DIR = os.path.join(SCANS_DIR, "processed")
KNOWAA_FILTER = "Knowaa_Global_zenith"


class CoworkReconcile:
    def __init__(self, connection_string):
        self.conn = pyodbc.connect(connection_string)
        self.cursor = self.conn.cursor()
        self.findings = []

    def load_scan_files(self):
        """Load all unprocessed JSON scan files"""
        scans = []
        if not os.path.exists(SCANS_DIR):
            print(f"Scans directory not found: {SCANS_DIR}")
            return scans

        for f in sorted(os.listdir(SCANS_DIR)):
            if f.endswith(".json") and not f.startswith("."):
                path = os.path.join(SCANS_DIR, f)
                try:
                    with open(path, "r", encoding="utf-8") as fp:
                        data = json.load(fp)
                    data["_filename"] = f
                    data["_filepath"] = path
                    scans.append(data)
                except Exception as e:
                    print(f"  Error reading {f}: {str(e)[:60]}")
        return scans

    def get_db_details(self, hotel_id, check_in):
        """Get SalesOffice.Details for a hotel+date from DB"""
        self.cursor.execute('''
            SELECT d.RoomCategory, d.RoomBoard, d.RoomPrice, d.RoomCode,
                   d.DateCreated, d.DateUpdated
            FROM [SalesOffice.Details] d
            JOIN [SalesOffice.Orders] o ON o.Id = d.SalesOfficeOrderId
            WHERE d.HotelId = ? AND o.DateFrom = ? AND d.IsDeleted = 0
            ORDER BY d.RoomCategory, d.RoomBoard
        ''', hotel_id, check_in)
        return [{"category": r[0], "board": r[1], "price": float(r[2]),
                 "code": r[3], "created": str(r[4])[:19], "updated": str(r[5])[:19] if r[5] else None}
                for r in self.cursor.fetchall()]

    def get_ratebycat(self, hotel_id):
        """Get ratebycat mappings for a hotel"""
        self.cursor.execute('''
            SELECT brd.BoardCode, cat.[Name]
            FROM Med_Hotels_ratebycat r
            LEFT JOIN MED_Board brd ON brd.BoardId = r.BoardId
            LEFT JOIN MED_RoomCategory cat ON cat.CategoryId = r.CategoryId
            WHERE r.HotelId = ?
        ''', hotel_id)
        return set(f"{r[0]}/{r[1]}" for r in self.cursor.fetchall())

    def compare_hotel(self, hotel_id, hotel_name, check_in, cowork_results):
        """Compare COWORK results with DB for one hotel"""
        findings = []

        # Filter COWORK: only refundable, exclude Knowaa
        cowork_filtered = []
        for r in cowork_results:
            if r.get("cancellation") == "non-refundable":
                continue
            if r.get("provider") == KNOWAA_FILTER:
                continue
            cowork_filtered.append(r)

        # Get DB data
        db_details = self.get_db_details(hotel_id, check_in)
        ratebycat = self.get_ratebycat(hotel_id)

        # Build sets for comparison
        cowork_combos = {}
        for r in cowork_filtered:
            key = f"{r['category']}/{r['board']}"
            if key not in cowork_combos or r["price"] < cowork_combos[key]["price"]:
                cowork_combos[key] = r

        db_combos = {}
        for r in db_details:
            key = f"{r['category']}/{r['board']}"
            db_combos[key] = r

        # Finding 1: COWORK found results but DB has nothing
        if cowork_filtered and not db_details:
            findings.append({
                "type": "COWORK_ONLY",
                "hotel_id": hotel_id,
                "hotel": hotel_name,
                "check_in": check_in,
                "message": f"COWORK found {len(cowork_filtered)} results but DB has 0 Details",
                "cowork_combos": list(cowork_combos.keys()),
            })

        # Finding 2: Combos COWORK sees but DB doesn't have
        for combo, cowork_data in cowork_combos.items():
            if combo not in db_combos:
                # Check if it's a mapping issue
                in_ratebycat = combo in ratebycat
                findings.append({
                    "type": "MISSING_IN_DB",
                    "hotel_id": hotel_id,
                    "hotel": hotel_name,
                    "check_in": check_in,
                    "combo": combo,
                    "cowork_price": cowork_data["price"],
                    "in_ratebycat": in_ratebycat,
                    "message": f"{combo} found by COWORK at ${cowork_data['price']:.2f} but not in DB. "
                               f"{'ratebycat exists' if in_ratebycat else 'MISSING from ratebycat'}",
                })

        # Finding 3: Price differences
        for combo in set(cowork_combos.keys()) & set(db_combos.keys()):
            cowork_price = cowork_combos[combo]["price"]
            db_price = db_combos[combo]["price"]
            diff = abs(cowork_price - db_price)
            if diff > 1.0:  # More than $1 difference
                findings.append({
                    "type": "PRICE_DIFF",
                    "hotel_id": hotel_id,
                    "hotel": hotel_name,
                    "check_in": check_in,
                    "combo": combo,
                    "cowork_price": cowork_price,
                    "db_price": db_price,
                    "diff": round(cowork_price - db_price, 2),
                    "message": f"{combo}: COWORK=${cowork_price:.2f} vs DB=${db_price:.2f} (diff=${cowork_price - db_price:+.2f})",
                })

        # Finding 4: DB has combos COWORK doesn't see
        for combo, db_data in db_combos.items():
            if combo not in cowork_combos:
                findings.append({
                    "type": "DB_ONLY",
                    "hotel_id": hotel_id,
                    "hotel": hotel_name,
                    "check_in": check_in,
                    "combo": combo,
                    "db_price": db_data["price"],
                    "message": f"{combo} in DB at ${db_data['price']:.2f} but not found by COWORK",
                })

        return findings

    def process_scan(self, scan_data):
        """Process one scan file"""
        findings = []

        if "hotels" in scan_data:
            # Bulk scan
            for hotel in scan_data["hotels"]:
                hid = hotel.get("hotel_id")
                name = hotel.get("hotel_name", "?")
                check_in = scan_data.get("scan_info", {}).get("check_in")
                results = hotel.get("results", [])
                findings.extend(self.compare_hotel(hid, name, check_in, results))
        else:
            # Single hotel scan
            info = scan_data.get("scan_info", {})
            hid = info.get("hotel_id")
            name = info.get("hotel_name", "?")
            check_in = info.get("check_in")
            results = scan_data.get("results", [])
            findings.extend(self.compare_hotel(hid, name, check_in, results))

        return findings

    def run(self, process=False):
        """Run reconciliation on all new scan files"""
        scans = self.load_scan_files()
        if not scans:
            print("No scan files found.")
            return

        print(f"Found {len(scans)} scan files")
        print()

        all_findings = []
        for scan in scans:
            filename = scan.get("_filename", "?")
            print(f"Processing: {filename}")
            findings = self.process_scan(scan)
            all_findings.extend(findings)

            if process:
                os.makedirs(PROCESSED_DIR, exist_ok=True)
                src = scan["_filepath"]
                dst = os.path.join(PROCESSED_DIR, scan["_filename"])
                os.rename(src, dst)
                print(f"  Moved to processed/")

        # Print findings
        print()
        print(f"{'='*60}")
        print(f"RECONCILIATION RESULTS: {len(all_findings)} findings")
        print(f"{'='*60}")

        by_type = {}
        for f in all_findings:
            by_type.setdefault(f["type"], []).append(f)

        for ftype, items in sorted(by_type.items()):
            print(f"\n--- {ftype} ({len(items)}) ---")
            for item in items[:20]:
                print(f"  {item['message']}")

        # Save report
        report_path = os.path.join(SCANS_DIR, f"reconcile_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json")
        with open(report_path, "w", encoding="utf-8") as f:
            json.dump({
                "timestamp": datetime.now().isoformat(),
                "files_processed": len(scans),
                "total_findings": len(all_findings),
                "findings": all_findings,
            }, f, indent=2, default=str)
        print(f"\nReport: {report_path}")

        self.findings = all_findings
        return all_findings

    def close(self):
        self.conn.close()


def main():
    parser = argparse.ArgumentParser(description="COWORK Reconcile")
    parser.add_argument("--connection-string", required=True)
    parser.add_argument("--check", action="store_true", help="Check without moving files")
    parser.add_argument("--process", action="store_true", help="Check and move to processed/")
    parser.add_argument("--report", action="store_true", help="Full report")
    args = parser.parse_args()

    reconcile = CoworkReconcile(args.connection_string)
    try:
        reconcile.run(process=args.process)
    finally:
        reconcile.close()


if __name__ == "__main__":
    main()
