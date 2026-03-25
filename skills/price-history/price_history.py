"""
Price History - Structured price tracking from SalesOffice.Log

Parses SalesOffice.Log (ActionId=3) and stores structured price history
in SalesOffice.PriceHistory table for fast queries and analytics.

Usage:
    # Create table + backfill all history
    python price_history.py --connection-string "..." --setup --backfill

    # Sync new records since last run
    python price_history.py --connection-string "..." --sync

    # Query price history for a hotel
    python price_history.py --connection-string "..." --hotel 22034 --days 7

    # Price trends report
    python price_history.py --connection-string "..." --report

    # Export to CSV
    python price_history.py --connection-string "..." --hotel 22034 --csv prices.csv
"""

import argparse
import csv as csv_module
import json
import os
import re
import sys
from datetime import datetime

import pyodbc


SQL_CREATE_TABLE = """
IF NOT EXISTS (
    SELECT * FROM sys.tables t
    JOIN sys.schemas s ON t.schema_id = s.schema_id
    WHERE s.name = 'dbo' AND t.name = 'SalesOffice.PriceHistory'
)
BEGIN
    CREATE TABLE [SalesOffice.PriceHistory] (
        Id              INT IDENTITY(1,1) PRIMARY KEY,
        DetailId        INT,
        OrderId         INT,
        HotelId         INT,
        RoomCategory    NVARCHAR(50),
        RoomBoard       NVARCHAR(10),
        OldPrice        DECIMAL(10,2),
        NewPrice        DECIMAL(10,2),
        PriceChange     DECIMAL(10,2),
        ChangePct       DECIMAL(5,2),
        ScanDate        DATETIME,
        DateFrom        DATE,
        LogId           INT
    );

    CREATE NONCLUSTERED INDEX IX_PH_Hotel ON [SalesOffice.PriceHistory] (HotelId, ScanDate);
    CREATE NONCLUSTERED INDEX IX_PH_Date ON [SalesOffice.PriceHistory] (DateFrom, HotelId);
    CREATE NONCLUSTERED INDEX IX_PH_Detail ON [SalesOffice.PriceHistory] (DetailId, ScanDate);
    CREATE NONCLUSTERED INDEX IX_PH_LogId ON [SalesOffice.PriceHistory] (LogId);

    PRINT 'Table [SalesOffice.PriceHistory] created.';
END
ELSE
    PRINT 'Table already exists.';
"""

PARSE_REGEX = re.compile(
    r'DbRoomPrice:\s*([\d.]+)\s*->\s*API RoomPrice:\s*([\d.]+).*?DbRoomCode:\s*(\d+):([^:]+):([^:]+):([^:]+):'
)

PARSE_SIMPLE = re.compile(
    r'DbRoomPrice:\s*([\d.]+)\s*->\s*API RoomPrice:\s*([\d.]+)'
)


class PriceHistory:
    def __init__(self, connection_string):
        self.conn = pyodbc.connect(connection_string)
        self.cursor = self.conn.cursor()

    def setup(self):
        """Create PriceHistory table"""
        print("Creating table...")
        self.cursor.execute(SQL_CREATE_TABLE)
        self.conn.commit()
        print("Done.")

    def get_last_log_id(self):
        """Get the last LogId we've processed"""
        try:
            self.cursor.execute("SELECT MAX(LogId) FROM [SalesOffice.PriceHistory]")
            r = self.cursor.fetchone()
            return r[0] if r and r[0] else 0
        except:
            return 0

    def backfill(self, batch_size=5000):
        """Parse ALL existing Log entries and insert into PriceHistory"""
        last_id = self.get_last_log_id()
        print(f"Backfill from LogId > {last_id}")

        self.cursor.execute("""
            SELECT COUNT(*) FROM [SalesOffice.Log]
            WHERE ActionId = 3 AND Id > ?
        """, last_id)
        total = self.cursor.fetchone()[0]
        print(f"Records to process: {total}")

        processed = 0
        current_id = last_id

        while True:
            self.cursor.execute("""
                SELECT TOP (?) l.Id, l.SalesOfficeOrderId, l.SalesOfficeDetailId,
                       l.DateCreated, l.Message
                FROM [SalesOffice.Log] l
                WHERE l.ActionId = 3 AND l.Id > ?
                ORDER BY l.Id
            """, batch_size, current_id)

            rows = self.cursor.fetchall()
            if not rows:
                break

            batch = []
            for r in rows:
                log_id = r[0]
                order_id = r[1]
                detail_id = r[2]
                scan_date = r[3]
                message = str(r[4]) if r[4] else ""

                # Parse prices
                m = PARSE_REGEX.search(message)
                if m:
                    old_price = float(m.group(1))
                    new_price = float(m.group(2))
                    hotel_id = int(m.group(3))
                    category = m.group(4)
                    board = m.group(6)
                else:
                    m2 = PARSE_SIMPLE.search(message)
                    if m2:
                        old_price = float(m2.group(1))
                        new_price = float(m2.group(2))
                        hotel_id = None
                        category = None
                        board = None
                    else:
                        continue

                change = round(new_price - old_price, 2)
                pct = round((new_price / old_price - 1) * 100, 2) if old_price > 0 else 0

                batch.append((detail_id, order_id, hotel_id, category, board,
                              old_price, new_price, change, pct, scan_date, None, log_id))

                current_id = log_id

            # Bulk insert
            if batch:
                self.cursor.executemany("""
                    INSERT INTO [SalesOffice.PriceHistory]
                    (DetailId, OrderId, HotelId, RoomCategory, RoomBoard,
                     OldPrice, NewPrice, PriceChange, ChangePct, ScanDate, DateFrom, LogId)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                """, batch)
                self.conn.commit()

            processed += len(rows)
            if processed % 50000 == 0 or len(rows) < batch_size:
                print(f"  Processed: {processed}/{total} ({processed*100//total if total else 0}%)")

        # Update DateFrom from Orders
        print("Updating DateFrom from Orders...")
        self.cursor.execute("""
            UPDATE ph SET ph.DateFrom = o.DateFrom
            FROM [SalesOffice.PriceHistory] ph
            JOIN [SalesOffice.Orders] o ON o.Id = ph.OrderId
            WHERE ph.DateFrom IS NULL AND ph.OrderId IS NOT NULL
        """)
        self.conn.commit()

        # Update HotelId from Orders where missing
        print("Updating HotelId from Orders...")
        self.cursor.execute("""
            UPDATE ph SET ph.HotelId = CAST(o.DestinationId AS INT)
            FROM [SalesOffice.PriceHistory] ph
            JOIN [SalesOffice.Orders] o ON o.Id = ph.OrderId
            WHERE ph.HotelId IS NULL AND ph.OrderId IS NOT NULL
        """)
        self.conn.commit()

        print(f"Backfill complete. {processed} records processed.")

    def sync(self):
        """Sync new records since last run"""
        self.backfill(batch_size=1000)

    def query_hotel(self, hotel_id, days=7):
        """Query price history for a hotel"""
        self.cursor.execute("""
            SELECT ph.DateFrom, ph.RoomCategory, ph.RoomBoard,
                   ph.OldPrice, ph.NewPrice, ph.PriceChange, ph.ChangePct,
                   ph.ScanDate
            FROM [SalesOffice.PriceHistory] ph
            WHERE ph.HotelId = ?
              AND ph.ScanDate >= DATEADD(DAY, ?, GETDATE())
            ORDER BY ph.ScanDate DESC
        """, hotel_id, -days)
        cols = [desc[0] for desc in self.cursor.description]
        return [dict(zip(cols, row)) for row in self.cursor.fetchall()]

    def report(self):
        """Price trends report"""
        self.cursor.execute("""
            SELECT ph.HotelId, h.[Name],
                   COUNT(*) as Changes,
                   AVG(ph.PriceChange) as AvgChange,
                   MIN(ph.NewPrice) as MinPrice,
                   MAX(ph.NewPrice) as MaxPrice,
                   SUM(CASE WHEN ph.PriceChange > 0 THEN 1 ELSE 0 END) as PriceUp,
                   SUM(CASE WHEN ph.PriceChange < 0 THEN 1 ELSE 0 END) as PriceDown,
                   SUM(CASE WHEN ph.PriceChange = 0 THEN 1 ELSE 0 END) as NoChange
            FROM [SalesOffice.PriceHistory] ph
            LEFT JOIN Med_Hotels h ON h.HotelId = ph.HotelId
            WHERE ph.ScanDate >= DATEADD(DAY, -7, GETDATE())
            GROUP BY ph.HotelId, h.[Name]
            ORDER BY COUNT(*) DESC
        """)
        cols = [desc[0] for desc in self.cursor.description]
        return [dict(zip(cols, row)) for row in self.cursor.fetchall()]

    def export_csv(self, data, path):
        if not data:
            return
        with open(path, "w", newline="", encoding="utf-8") as f:
            writer = csv_module.DictWriter(f, fieldnames=data[0].keys())
            writer.writeheader()
            writer.writerows(data)
        print(f"Exported {len(data)} rows to {path}")

    def stats(self):
        """Table stats"""
        self.cursor.execute("SELECT COUNT(*) FROM [SalesOffice.PriceHistory]")
        total = self.cursor.fetchone()[0]
        self.cursor.execute("SELECT MIN(ScanDate), MAX(ScanDate) FROM [SalesOffice.PriceHistory]")
        r = self.cursor.fetchone()
        self.cursor.execute("SELECT COUNT(DISTINCT HotelId) FROM [SalesOffice.PriceHistory]")
        hotels = self.cursor.fetchone()[0]
        print(f"PriceHistory: {total} records | {hotels} hotels | {str(r[0])[:10]} to {str(r[1])[:10]}")

    def close(self):
        self.conn.close()


def main():
    parser = argparse.ArgumentParser(description="Price History")
    parser.add_argument("--connection-string", required=True)
    parser.add_argument("--setup", action="store_true", help="Create table")
    parser.add_argument("--backfill", action="store_true", help="Backfill from Log")
    parser.add_argument("--sync", action="store_true", help="Sync new records")
    parser.add_argument("--hotel", type=int, help="Query hotel")
    parser.add_argument("--days", type=int, default=7, help="Days to look back")
    parser.add_argument("--report", action="store_true", help="Price trends report")
    parser.add_argument("--csv", help="Export to CSV")
    parser.add_argument("--stats", action="store_true", help="Table stats")
    args = parser.parse_args()

    ph = PriceHistory(args.connection_string)

    try:
        if args.setup:
            ph.setup()
        if args.backfill:
            ph.backfill()
        if args.sync:
            ph.sync()
        if args.hotel:
            data = ph.query_hotel(args.hotel, args.days)
            print(f"Price history for hotel {args.hotel} ({args.days} days): {len(data)} changes")
            for d in data[:20]:
                print(f"  {str(d['ScanDate'])[:19]} {d.get('RoomCategory','?')}/{d.get('RoomBoard','?')} "
                      f"${d['OldPrice']:.2f} -> ${d['NewPrice']:.2f} ({d['PriceChange']:+.2f})")
            if args.csv:
                ph.export_csv(data, args.csv)
        if args.report:
            data = ph.report()
            print(f"Price trends (7 days): {len(data)} hotels")
            for d in data:
                name = str(d.get('Name', '?'))[:25]
                print(f"  {name:25} changes={d['Changes']:>5} avg={d['AvgChange']:+.2f} "
                      f"up={d['PriceUp']} down={d['PriceDown']} range=${d['MinPrice']:.0f}-${d['MaxPrice']:.0f}")
        if args.stats:
            ph.stats()
    finally:
        ph.close()


if __name__ == "__main__":
    main()
