"""
LastPriceUpdate Fix - Dual token search + Knowaa_Global_zenith filter

For each Active Room (MED_Book IsActive=1):
1. Search with Medici B2B token
2. Search with Knowaa Live token
3. Filter out Knowaa_Global_zenith from results
4. LastPrice = cheapest price from both searches
5. If no results from either → LastPrice = NULL

Usage:
    python lastprice_update.py --connection-string "..." --check
    python lastprice_update.py --connection-string "..." --live
    python lastprice_update.py --connection-string "..." --booking-id 5088 --live
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


class LastPriceUpdater:
    def __init__(self, connection_string, live=False):
        self.conn = pyodbc.connect(connection_string)
        self.cursor = self.conn.cursor()
        self.live = live
        self.tokens = {}
        self.stats = {"checked": 0, "updated": 0, "no_results": 0, "errors": 0, "knowaa_filtered": 0}
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

    # ── GET BOOKING DETAILS ───────────────────────────────────

    def _get_booking_details(self, content_booking_id, user_id):
        """Get booking details from Innstant API (hotel, dates, category, board, pax)"""
        # Use the token of the user who created the booking (for access)
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

            # pax is a list: [{"adults": [{...}, {...}], "children": [{...}]}]
            # adults count = len(adults list)
            if isinstance(pax_data, list) and pax_data:
                pax_room = pax_data[0] if isinstance(pax_data[0], dict) else {}
                adults_list = pax_room.get("adults", [])
                children_list = pax_room.get("children", [])
                adults = len(adults_list) if isinstance(adults_list, list) else 2
                # children ages (for search)
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
        self.cursor.execute(
            "SELECT AetherTokenStorageId FROM Med_Users WHERE userid=?", user_id)
        r = self.cursor.fetchone()
        return r[0] if r and r[0] in self.tokens else None

    # ── INNSTANT SEARCH ───────────────────────────────────────

    def _search_innstant(self, details, token_id):
        """Search Innstant API with polling (same flow as C# WebJob)"""
        headers = self._headers(token_id)

        # Build search request (matches SearchHotels model)
        search_body = {
            "destinations": [{"type": "hotel", "id": details["hotel_id"]}],
            "dates": {"from": details["start"], "to": details["end"]},
            "pax": [{"adults": details["adults"], "children": details["children"]}],
            "currencies": [details["currency"]],
            "customerCountry": "IL",
            "filters": [],
            "timeout": 30,
        }

        # Step 1: POST /hotels/search → create session
        try:
            resp = requests.post(
                f"{INNSTANT_SEARCH_URL}/hotels/search",
                json=search_body, headers=headers, timeout=30)
            if resp.status_code != 200:
                return [], f"Search HTTP {resp.status_code}"
            session = resp.json()
            timestamp = session.get("timestamp")
        except Exception as e:
            return [], f"Search error: {str(e)[:40]}"

        # Step 2: Get results via /hotels/details/{hotelId} (works for cached+fresh)
        hotel_id = details["hotel_id"]
        time.sleep(2)

        try:
            resp = requests.post(
                f"{INNSTANT_SEARCH_URL}/hotels/details/{hotel_id}",
                json=search_body, headers=headers, timeout=30)
            if resp.status_code != 200:
                return [], f"Details HTTP {resp.status_code}"

            data = resp.json()
            all_results = data.get("results", [])

            # If not done yet, poll
            if data.get("status") != "done":
                timestamp = data.get("timestamp", timestamp)
                for attempt in range(POLL_MAX_ATTEMPTS):
                    time.sleep(POLL_DELAY)
                    resp = requests.post(
                        f"{INNSTANT_SEARCH_URL}/hotels/poll/{timestamp}",
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

    # ── FILTER & PRICE ────────────────────────────────────────

    def _filter_and_get_cheapest(self, results, details):
        """Filter results: free cancel + correct category/board + no Knowaa_Global_zenith"""
        matching_prices = []
        knowaa_count = 0

        for hotel in results:
            # Must be fully refundable
            cancel_type = hotel.get("cancellation", {}).get("type", "")
            if cancel_type != "fully-refundable":
                continue

            # Filter Knowaa_Global_zenith
            providers = [p.get("name", "") for p in hotel.get("providers", [])]
            if all(p == KNOWAA_FILTER for p in providers):
                knowaa_count += 1
                continue

            # Match category and board
            items = hotel.get("items", [])
            for item in items:
                if item.get("category") == details["category"] and item.get("board") == details["board"]:
                    price = hotel.get("price", {}).get("amount")
                    if price:
                        matching_prices.append(float(price))
                    break

        if knowaa_count > 0:
            self.stats["knowaa_filtered"] += knowaa_count

        return matching_prices

    # ── PROCESS ONE BOOKING ───────────────────────────────────

    def _process_booking(self, booking):
        name = str(booking["HotelName"] or "?")[:25]
        buy = float(booking["price"])
        old_last = float(booking["lastPrice"]) if booking["lastPrice"] else None
        old_str = f"${old_last:.0f}" if old_last else "NULL"

        # Get booking details
        details, err = self._get_booking_details(booking["contentBookingID"], booking["UserId"])
        if err:
            self.stats["errors"] += 1
            print(f"  [ERR] Book {booking['id']} {name} Buy=${buy:.0f} Last={old_str} -> Details: {err}")
            return

        # Debug: show what we're searching for
        print(f"  Search: hotel={details['hotel_id']} {details['start']}-{details['end']} {details['category']}/{details['board']} adults={details['adults']}")

        # Search with ALL tokens
        all_prices = []
        for token_id, token_info in self.tokens.items():
            results, search_err = self._search_innstant(details, token_id)
            if search_err:
                print(f"       Token {token_info['name']}: {search_err}")
                continue

            if search_err:
                print(f"       Token {token_info['name']}: {search_err}")
            else:
                print(f"       Token {token_info['name']}: {len(results)} raw results from API")

            prices = self._filter_and_get_cheapest(results, details)
            if prices:
                print(f"       Token {token_info['name']}: {len(prices)} prices after filter, cheapest ${min(prices):.0f}")
                all_prices.extend(prices)
            elif results:
                print(f"       Token {token_info['name']}: {len(results)} results but 0 match {details.get('category')}/{details.get('board')}")

        # Determine LastPrice
        if all_prices:
            new_last = min(all_prices)
            diff = new_last - buy
            diff_str = f"+${diff:.0f}" if diff >= 0 else f"-${abs(diff):.0f}"
            self.stats["updated"] += 1
            print(f"  [UPD] Book {booking['id']} {name} Buy=${buy:.0f} Last=${new_last:.0f} ({diff_str})")

            if self.live:
                self.cursor.execute(
                    "UPDATE MED_Book SET lastPrice=?, DateLastPrice=CAST(GETDATE() AS DATE) WHERE id=?",
                    new_last, booking["id"])
                self.conn.commit()
        else:
            self.stats["no_results"] += 1
            print(f"  [NULL] Book {booking['id']} {name} Buy=${buy:.0f} -> No results from any token")

            if self.live:
                self.cursor.execute(
                    "UPDATE MED_Book SET lastPrice=NULL, DateLastPrice=CAST(GETDATE() AS DATE) WHERE id=?",
                    booking["id"])
                self.conn.commit()

    # ── MAIN PROCESS ──────────────────────────────────────────

    def process(self, booking_id=None):
        sql = """
            SELECT b.id, b.PreBookId, b.HotelId, b.contentBookingID,
                   b.price, b.lastPrice, b.startDate, b.endDate,
                   b.UserId, b.IsSold, h.[Name] as HotelName
            FROM MED_Book b
            LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
            WHERE b.IsActive = 1
        """
        if booking_id:
            sql += f" AND b.id = {int(booking_id)}"
        sql += " ORDER BY b.id"
        self.cursor.execute(sql)
        cols = [desc[0] for desc in self.cursor.description]
        bookings = [dict(zip(cols, row)) for row in self.cursor.fetchall()]

        print(f"Processing {len(bookings)} Active Rooms")
        print(f"Tokens: {', '.join(t['name'] for t in self.tokens.values())}")
        print(f"Filter: {KNOWAA_FILTER}")
        print(f"Mode: {'LIVE' if self.live else 'CHECK (dry-run)'}")
        print()

        for booking in bookings:
            self.stats["checked"] += 1
            self._process_booking(booking)
            if not booking_id:
                time.sleep(DELAY_BETWEEN_BOOKINGS)

        print()
        print("=== SUMMARY ===")
        print(f"Checked: {self.stats['checked']}")
        print(f"Updated: {self.stats['updated']}")
        print(f"No results (NULL): {self.stats['no_results']}")
        print(f"Errors: {self.stats['errors']}")
        print(f"Knowaa filtered: {self.stats['knowaa_filtered']}")

    def close(self):
        self.conn.close()


def main():
    parser = argparse.ArgumentParser(description="LastPriceUpdate - Dual token + Knowaa filter")
    parser.add_argument("--connection-string", required=True)
    parser.add_argument("--live", action="store_true")
    parser.add_argument("--booking-id", type=int)
    args = parser.parse_args()

    updater = LastPriceUpdater(args.connection_string, live=args.live)
    try:
        updater.process(args.booking_id)
    finally:
        updater.close()


if __name__ == "__main__":
    main()
