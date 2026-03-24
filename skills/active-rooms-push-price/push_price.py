"""
Active Rooms Push Price - Update selling price for purchased rooms

For Price Predictor: change the PushPrice of Active Rooms in MED_Book
and push the new price to Zenith/Noovy.

Uses the existing stored procedure Med_updateNewPrice which:
1. Validates room is active and unsold
2. Validates new price > buy price (no loss)
3. Updates PushPrice in MED_Opportunities
4. Adds to MED_HotelsToPush queue
5. PushRoomControl pushes to Zenith automatically

Usage:
    # Check mode (read-only)
    python push_price.py --connection-string "..." --check

    # Update single room
    python push_price.py --connection-string "..." --prebook-id 10832 --push-price 250.00 --live

    # Bulk from CSV
    python push_price.py --connection-string "..." --csv prices.csv --live

    # List active rooms
    python push_price.py --connection-string "..." --list
"""

import argparse
import csv as csv_module
import json
import os
import sys
import time
from datetime import datetime

import pyodbc
import requests

# ═══════════════════════════════════════════════════════════════
# GUARDRAILS
# ═══════════════════════════════════════════════════════════════

ALLOWED_SYSTEMS = {"PricePredictor", "admin", "manual"}
MIN_PUSH_PRICE = 1.0
MAX_PUSH_PRICE = 10000.0
MAX_UPDATES_PER_RUN = 200
MAX_DEVIATION_PCT = 100  # max 100% above buy price

ZENITH_URL = "https://hotel.tools/service/Medici%20new"
ZENITH_USERNAME = "APIMedici:Medici Live"
ZENITH_PASSWORD = "12345"
ZENITH_PUSH_DELAY = 0.2  # 200ms between pushes


class ActiveRoomsPushPrice:
    def __init__(self, connection_string, live=False):
        self.conn = pyodbc.connect(connection_string)
        self.cursor = self.conn.cursor()
        self.live = live
        self.stats = {"checked": 0, "updated": 0, "skipped": 0, "errors": 0}
        self.audit = []

    def list_active_rooms(self):
        """List all active unsold rooms"""
        self.cursor.execute('''
            SELECT b.id, b.PreBookId, b.HotelId, h.[Name], h.Innstant_ZenithId,
                   b.price as BuyPrice, b.startDate, b.endDate,
                   o.PushPrice, o.PushInvTypeCode, o.PushRatePlanCode,
                   o.BoardId, o.CategoryId,
                   b.lastPrice, b.DateLastPrice
            FROM MED_Book b
            LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
            LEFT JOIN [MED_\u05b9O\u05b9\u05b9pportunities] o ON o.OpportunityId = b.OpportunityId
            WHERE b.IsActive = 1 AND b.IsSold = 0
            ORDER BY b.id
        ''')
        cols = [desc[0] for desc in self.cursor.description]
        return [dict(zip(cols, row)) for row in self.cursor.fetchall()]

    def update_push_price(self, prebook_id, new_push_price, created_by="PricePredictor"):
        """Update push price for a single room via stored procedure"""
        self.stats["checked"] += 1

        # Get room info
        self.cursor.execute('''
            SELECT b.id, b.PreBookId, b.HotelId, h.[Name], h.Innstant_ZenithId,
                   b.price as BuyPrice, b.startDate,
                   o.PushPrice as CurrentPush, o.PushInvTypeCode, o.PushRatePlanCode,
                   b.IsActive, b.IsSold
            FROM MED_Book b
            LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
            LEFT JOIN [MED_\u05b9O\u05b9\u05b9pportunities] o ON o.OpportunityId = b.OpportunityId
            WHERE b.PreBookId = ?
        ''', prebook_id)
        row = self.cursor.fetchone()

        if not row:
            self.stats["errors"] += 1
            return {"status": "error", "reason": f"PreBookId {prebook_id} not found"}

        cols = [desc[0] for desc in self.cursor.description]
        room = dict(zip(cols, row))
        name = str(room["Name"])[:25] if room["Name"] else "?"
        buy = float(room["BuyPrice"])
        current = float(room["CurrentPush"]) if room["CurrentPush"] else 0
        venue = room["Innstant_ZenithId"]
        itc = room["PushInvTypeCode"] or ""
        rpc = room["PushRatePlanCode"] or ""

        # Guardrails
        if not room["IsActive"]:
            self.stats["skipped"] += 1
            return {"status": "skipped", "reason": "Room not active"}

        if room["IsSold"]:
            self.stats["skipped"] += 1
            return {"status": "skipped", "reason": "Room already sold"}

        if new_push_price <= buy:
            self.stats["skipped"] += 1
            return {"status": "skipped", "reason": f"Push ${new_push_price:.2f} <= Buy ${buy:.2f} (would sell at loss)"}

        if new_push_price < MIN_PUSH_PRICE or new_push_price > MAX_PUSH_PRICE:
            self.stats["skipped"] += 1
            return {"status": "skipped", "reason": f"Price ${new_push_price:.2f} out of range ${MIN_PUSH_PRICE}-${MAX_PUSH_PRICE}"}

        margin_pct = (new_push_price / buy - 1) * 100
        if margin_pct > MAX_DEVIATION_PCT:
            self.stats["skipped"] += 1
            return {"status": "skipped", "reason": f"Margin {margin_pct:.0f}% exceeds max {MAX_DEVIATION_PCT}%"}

        if created_by not in ALLOWED_SYSTEMS:
            self.stats["skipped"] += 1
            return {"status": "skipped", "reason": f"System '{created_by}' not authorized"}

        result = {
            "prebook_id": prebook_id,
            "hotel": name,
            "venue_id": venue,
            "buy_price": buy,
            "old_push": current,
            "new_push": new_push_price,
            "margin_pct": round(margin_pct, 1),
            "itc": itc,
            "rpc": rpc,
            "stay": str(room["startDate"])[:10],
        }

        if not self.live:
            self.stats["updated"] += 1
            result["status"] = "would_update"
            self.audit.append(result)
            return result

        # Execute stored procedure
        try:
            self.cursor.execute("EXEC Med_updateNewPrice @PreBookId=?, @pushprice=?",
                                prebook_id, new_push_price)
            sp_result = self.cursor.fetchone()
            sp_msg = str(sp_result[0]) if sp_result else "no response"
            self.conn.commit()

            if "successfully" in sp_msg.lower():
                result["status"] = "updated"
                result["sp_result"] = sp_msg
                self.stats["updated"] += 1

                # Push to Zenith
                if venue and itc and rpc:
                    zenith_ok = self._push_to_zenith(venue, itc, rpc,
                                                      str(room["startDate"])[:10],
                                                      new_push_price)
                    result["zenith_push"] = "success" if zenith_ok else "failed"
                else:
                    result["zenith_push"] = "skipped (missing ITC/RPC)"
            else:
                result["status"] = "sp_error"
                result["sp_result"] = sp_msg
                self.stats["errors"] += 1

        except Exception as e:
            result["status"] = "error"
            result["error"] = str(e)[:80]
            self.stats["errors"] += 1

        self.audit.append(result)
        return result

    def _push_to_zenith(self, venue_id, itc, rpc, date, price):
        """Push rate to Zenith via SOAP"""
        soap = f'''<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
  <SOAP-ENV:Header><wsse:Security soap:mustUnderstand="1" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><wsse:UsernameToken><wsse:Username>{ZENITH_USERNAME}</wsse:Username><wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">{ZENITH_PASSWORD}</wsse:Password></wsse:UsernameToken></wsse:Security></SOAP-ENV:Header>
  <SOAP-ENV:Body><OTA_HotelRateAmountNotifRQ xmlns="http://www.opentravel.org/OTA/2003/05" TimeStamp="{datetime.now().isoformat()}" Version="1.0" EchoToken="pushprice">
    <RateAmountMessages HotelCode="{venue_id}">
      <RateAmountMessage>
        <StatusApplicationControl InvTypeCode="{itc}" RatePlanCode="{rpc}" Start="{date}" End="{date}"/>
        <Rates><Rate><BaseByGuestAmts>
          <BaseByGuestAmt AgeQualifyingCode="10" AmountAfterTax="{price}"/>
          <BaseByGuestAmt AgeQualifyingCode="8" AmountAfterTax="{price}"/>
        </BaseByGuestAmts></Rate></Rates>
      </RateAmountMessage>
    </RateAmountMessages>
  </OTA_HotelRateAmountNotifRQ></SOAP-ENV:Body></SOAP-ENV:Envelope>'''

        try:
            time.sleep(ZENITH_PUSH_DELAY)
            resp = requests.post(ZENITH_URL, data=soap,
                                 headers={"Content-Type": "text/xml"}, timeout=15)
            return resp.status_code == 200 and "Error" not in resp.text
        except:
            return False

    def update_from_csv(self, csv_path, created_by="PricePredictor"):
        """Bulk update from CSV file"""
        with open(csv_path, "r") as f:
            reader = csv_module.DictReader(f)
            count = 0
            for row in reader:
                if count >= MAX_UPDATES_PER_RUN:
                    print(f"  Rate limit: stopped at {MAX_UPDATES_PER_RUN}")
                    break
                prebook_id = int(row["prebook_id"])
                push_price = float(row["push_price"])
                result = self.update_push_price(prebook_id, push_price, created_by)
                status = result.get("status", "?")
                hotel = result.get("hotel", "?")
                print(f"  [{status.upper()}] PreBook {prebook_id} {hotel} -> ${push_price:.2f}")
                count += 1

    def print_results(self):
        mode = "LIVE" if self.live else "CHECK (dry-run)"
        print(f"\n=== SUMMARY [{mode}] ===")
        print(f"Checked: {self.stats['checked']}")
        print(f"Updated: {self.stats['updated']}")
        print(f"Skipped: {self.stats['skipped']}")
        print(f"Errors: {self.stats['errors']}")

    def save_audit(self, out_dir="pushprice-report"):
        os.makedirs(out_dir, exist_ok=True)
        ts = datetime.now().strftime("%Y%m%d_%H%M%S")
        path = os.path.join(out_dir, f"pushprice_audit_{ts}.json")
        with open(path, "w") as f:
            json.dump({"timestamp": datetime.now().isoformat(),
                        "mode": "LIVE" if self.live else "CHECK",
                        "stats": self.stats, "actions": self.audit}, f, indent=2, default=str)
        print(f"Audit: {path}")

        # Rollback SQL
        rollback_actions = [a for a in self.audit if a.get("status") == "updated"]
        if rollback_actions:
            rb_path = os.path.join(out_dir, f"rollback_{ts}.sql")
            with open(rb_path, "w") as f:
                f.write(f"-- Rollback push price changes {ts}\n")
                for a in rollback_actions:
                    f.write(f"EXEC Med_updateNewPrice @PreBookId={a['prebook_id']}, @pushprice={a['old_push']};\n")
            print(f"Rollback: {rb_path}")

    def close(self):
        self.conn.close()


def main():
    parser = argparse.ArgumentParser(description="Active Rooms Push Price")
    parser.add_argument("--connection-string", required=True)
    parser.add_argument("--live", action="store_true")
    parser.add_argument("--list", action="store_true", help="List active rooms")
    parser.add_argument("--prebook-id", type=int, help="Single room PreBookId")
    parser.add_argument("--push-price", type=float, help="New push price")
    parser.add_argument("--csv", help="CSV file with prebook_id,push_price")
    parser.add_argument("--by", default="PricePredictor", help="System name")
    parser.add_argument("--check", action="store_true", help="Check mode (read-only)")
    args = parser.parse_args()

    skill = ActiveRoomsPushPrice(args.connection_string, live=args.live and not args.check)

    try:
        if args.list:
            rooms = skill.list_active_rooms()
            print(f"Active Rooms: {len(rooms)}")
            print(f"{'PBK':>6} {'Hotel':25} {'Buy':>7} {'Push':>7} {'Stay':12} {'ITC':5} {'RPC':6}")
            print("-" * 75)
            for r in rooms:
                name = str(r["Name"])[:25] if r["Name"] else "?"
                push = f"${r['PushPrice']:.0f}" if r["PushPrice"] else "?"
                print(f"{r['PreBookId']:>6} {name:25} ${r['BuyPrice']:>6.0f} {push:>7} {str(r['startDate'])[:10]:12} {r['PushInvTypeCode'] or '':5} {r['PushRatePlanCode'] or '':6}")

        elif args.prebook_id and args.push_price:
            result = skill.update_push_price(args.prebook_id, args.push_price, args.by)
            print(json.dumps(result, indent=2, default=str))
            skill.print_results()
            skill.save_audit()

        elif args.csv:
            skill.update_from_csv(args.csv, args.by)
            skill.print_results()
            skill.save_audit()

        else:
            parser.print_help()

    finally:
        skill.close()


if __name__ == "__main__":
    main()
