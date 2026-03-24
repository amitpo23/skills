"""
LastPrice Cleanup - Fix LastPrice=PushPrice records after C# WebJob runs

Lightweight script that runs every hour:
- Checks if any bookings have LastPrice = PushPrice (the C# bug)
- If 0 found → exits immediately (1 second)
- If found → fixes only those with dual token search + Knowaa filter (~5 min)

Does NOT change the C# WebJob. Just cleans up after it.

Usage:
    python lastprice_cleanup.py --connection-string "..." --check
    python lastprice_cleanup.py --connection-string "..." --live
"""

import argparse
import json
import os
import sys
import time
from datetime import datetime

import pyodbc
import requests

# ═══════════════════════════════════════════════════════════════
# CONFIG
# ═══════════════════════════════════════════════════════════════

INNSTANT_BOOK_URL = "https://book.mishor5.innstant-servers.com"
INNSTANT_SEARCH_URL = "https://connect.mishor5.innstant-servers.com"
KNOWAA_FILTER = "Knowaa_Global_zenith"
DELAY_BETWEEN_BOOKINGS = 5
POLL_DELAY = 2
POLL_MAX_ATTEMPTS = 30
TOKEN_IDS = [2, 4]  # Medici B2B, Knowaa Live


class LastPriceCleanup:
    def __init__(self, connection_string, live=False):
        self.conn = pyodbc.connect(connection_string)
        self.cursor = self.conn.cursor()
        self.live = live
        self.tokens = {}
        self.stats = {"checked": 0, "fixed": 0, "no_results": 0, "errors": 0, "knowaa_filtered": 0}
        self._load_tokens()

    def _load_tokens(self):
        for tid in TOKEN_IDS:
            self.cursor.execute(
                "SELECT Id, Name, AetherAccessToken, AetherApplicationKey FROM AetherTokenStorage WHERE Id=?", tid)
            r = self.cursor.fetchone()
            if r and r[2]:
                self.tokens[tid] = {"name": r[1], "token": r[2], "key": r[3]}

    def _headers(self, token_id):
        t = self.tokens[token_id]
        return {
            "aether-access-token": t["token"],
            "aether-application-key": t["key"],
            "content-type": "application/json",
            "cache-control": "no-cache",
        }

    def find_bad_records(self):
        """Find bookings where LastPrice = PushPrice (the C# bug)"""
        self.cursor.execute('''
            SELECT b.id, b.PreBookId, b.HotelId, b.contentBookingID,
                   b.price, b.lastPrice, b.startDate, b.endDate,
                   b.UserId, o.PushPrice, h.[Name]
            FROM MED_Book b
            JOIN [MED_\u05b9O\u05b9\u05b9pportunities] o ON o.OpportunityId = b.OpportunityId
            LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
            WHERE b.IsActive = 1 AND b.lastPrice IS NOT NULL
            AND ABS(b.lastPrice - o.PushPrice) < 0.5
        ''')
        cols = [desc[0] for desc in self.cursor.description]
        return [dict(zip(cols, row)) for row in self.cursor.fetchall()]

    def get_booking_details(self, content_booking_id, user_id):
        """Get booking details from Innstant API"""
        user_token_id = self._get_user_token_id(user_id)
        if not user_token_id:
            return None, "No token for user"
        try:
            resp = requests.get(
                f"{INNSTANT_BOOK_URL}/booking-details/{content_booking_id}",
                headers=self._headers(user_token_id), timeout=30)
            if resp.status_code != 200:
                return None, f"HTTP {resp.status_code}"
            data = resp.json()
            content = data.get("content", {})
            services = content.get("services", [])
            if not services:
                return None, "No services"
            service = services[0]
            hotel = service.get("hotel", {})
            room = hotel.get("room", {})
            pax_data = service.get("pax", [])
            if isinstance(pax_data, list) and pax_data:
                pax_room = pax_data[0] if isinstance(pax_data[0], dict) else {}
                adults_list = pax_room.get("adults", [])
                children_list = pax_room.get("children", [])
                adults = len(adults_list) if isinstance(adults_list, list) else 2
                children = []
                if isinstance(children_list, list):
                    for child in children_list:
                        if isinstance(child, dict):
                            children.append(child.get("age", 5))
                        elif isinstance(child, int):
                            children.append(child)
            else:
                adults = 2
                children = []
            return {
                "hotel_id": int(hotel.get("id", 0)),
                "start": service.get("startDate", ""),
                "end": service.get("endDate", ""),
                "category": room.get("category", ""),
                "board": room.get("board", ""),
                "adults": adults,
                "children": children,
                "currency": content.get("price", {}).get("currency", "USD"),
            }, None
        except Exception as e:
            return None, str(e)[:60]

    def _get_user_token_id(self, user_id):
        self.cursor.execute("SELECT AetherTokenStorageId FROM Med_Users WHERE userid=?", user_id)
        r = self.cursor.fetchone()
        return r[0] if r and r[0] in self.tokens else None

    def search_innstant(self, details, token_id):
        """Search Innstant API with polling"""
        headers = self._headers(token_id)
        search_body = {
            "destinations": [{"type": "hotel", "id": details["hotel_id"]}],
            "dates": {"from": details["start"], "to": details["end"]},
            "pax": [{"adults": details["adults"], "children": details["children"]}],
            "currencies": [details["currency"]],
            "customerCountry": "IL",
            "filters": [],
            "timeout": 30,
        }
        try:
            resp = requests.post(f"{INNSTANT_SEARCH_URL}/hotels/search",
                json=search_body, headers=headers, timeout=30)
            if resp.status_code != 200:
                return [], f"Search HTTP {resp.status_code}"
            session = resp.json()
            timestamp = session.get("timestamp")
        except Exception as e:
            return [], f"Search error: {str(e)[:40]}"

        time.sleep(2)
        all_results = []
        try:
            resp = requests.post(f"{INNSTANT_SEARCH_URL}/hotels/details/{details['hotel_id']}",
                json=search_body, headers=headers, timeout=30)
            if resp.status_code != 200:
                return [], f"Details HTTP {resp.status_code}"
            data = resp.json()
            all_results = data.get("results", [])
            if data.get("status") != "done":
                timestamp = data.get("timestamp", timestamp)
                for _ in range(POLL_MAX_ATTEMPTS):
                    time.sleep(POLL_DELAY)
                    resp = requests.post(f"{INNSTANT_SEARCH_URL}/hotels/poll/{timestamp}",
                        json=search_body, headers=headers, timeout=30)
                    if resp.status_code != 200:
                        continue
                    poll = resp.json()
                    timestamp = poll.get("timestamp", timestamp)
                    results = poll.get("results", [])
                    if results:
                        all_results.extend(results)
                    if poll.get("status") in ("done", "error"):
                        break
        except Exception as e:
            return [], f"Details error: {str(e)[:40]}"

        return all_results, None

    def filter_and_cheapest(self, results, details):
        """Filter: free cancel + category/board match + no Knowaa_Global_zenith"""
        prices = []
        for hotel in results:
            if hotel.get("cancellation", {}).get("type") != "fully-refundable":
                continue
            providers = [p.get("name", "") for p in hotel.get("providers", [])]
            if all(p == KNOWAA_FILTER for p in providers):
                self.stats["knowaa_filtered"] += 1
                continue
            for item in hotel.get("items", []):
                if item.get("category") == details["category"] and item.get("board") == details["board"]:
                    price = hotel.get("price", {}).get("amount")
                    if price:
                        prices.append(float(price))
                    break
        return prices

    def fix_booking(self, booking):
        """Fix one bad booking with dual token search"""
        name = str(booking.get("Name", "?"))[:25]
        buy = float(booking["price"])
        push = float(booking["PushPrice"])

        details, err = self.get_booking_details(booking["contentBookingID"], booking["UserId"])
        if err:
            self.stats["errors"] += 1
            print(f"  [ERR] Book {booking['id']} {name} -> {err}")
            return

        all_prices = []
        for token_id, token_info in self.tokens.items():
            results, search_err = self.search_innstant(details, token_id)
            if search_err:
                continue
            prices = self.filter_and_cheapest(results, details)
            if prices:
                all_prices.extend(prices)

        if all_prices:
            new_last = min(all_prices)
            diff = new_last - buy
            diff_str = f"+${diff:.0f}" if diff >= 0 else f"-${abs(diff):.0f}"
            self.stats["fixed"] += 1
            print(f"  [FIX] Book {booking['id']} {name} Buy=${buy:.0f} Was=${push:.0f}(push) Now=${new_last:.0f} ({diff_str})")
            if self.live:
                self.cursor.execute(
                    "UPDATE MED_Book SET lastPrice=?, DateLastPrice=CAST(GETDATE() AS DATE) WHERE id=?",
                    new_last, booking["id"])
                self.conn.commit()
        else:
            self.stats["no_results"] += 1
            print(f"  [NULL] Book {booking['id']} {name} Buy=${buy:.0f} Was=${push:.0f}(push) -> NULL (no market data)")
            if self.live:
                self.cursor.execute(
                    "UPDATE MED_Book SET lastPrice=NULL, DateLastPrice=CAST(GETDATE() AS DATE) WHERE id=?",
                    booking["id"])
                self.conn.commit()

    def run(self):
        """Main: find bad records, fix them"""
        bad = self.find_bad_records()

        if not bad:
            print(f"[{datetime.now().strftime('%H:%M')}] No bad records. LastPrice clean.")
            return

        print(f"[{datetime.now().strftime('%H:%M')}] Found {len(bad)} bookings with LastPrice=PushPrice. Fixing...")
        print(f"Mode: {'LIVE' if self.live else 'CHECK (dry-run)'}")
        print()

        for booking in bad:
            self.stats["checked"] += 1
            self.fix_booking(booking)
            time.sleep(DELAY_BETWEEN_BOOKINGS)

        print()
        print(f"=== CLEANUP DONE ===")
        print(f"Found: {len(bad)} | Fixed: {self.stats['fixed']} | NULL: {self.stats['no_results']} | Errors: {self.stats['errors']}")
        print(f"Knowaa filtered: {self.stats['knowaa_filtered']}")

    def close(self):
        self.conn.close()


def main():
    parser = argparse.ArgumentParser(description="LastPrice Cleanup")
    parser.add_argument("--connection-string", required=True)
    parser.add_argument("--live", action="store_true")
    args = parser.parse_args()

    cleanup = LastPriceCleanup(args.connection_string, live=args.live)
    try:
        cleanup.run()
    finally:
        cleanup.close()


if __name__ == "__main__":
    main()
