# Price History Skill

## Purpose
Structured price tracking for all SalesOffice scans. Converts free-text Log entries into queryable price history table.

## Data Source
`SalesOffice.Log` (ActionId=3) → parsed into `SalesOffice.PriceHistory`

## Table: SalesOffice.PriceHistory

| Column | Type | Description |
|--------|------|-------------|
| DetailId | INT | SalesOffice Detail |
| OrderId | INT | SalesOffice Order |
| HotelId | INT | Hotel |
| RoomCategory | NVARCHAR(50) | standard/superior/deluxe/suite |
| RoomBoard | NVARCHAR(10) | RO/BB |
| OldPrice | DECIMAL(10,2) | Price before scan |
| NewPrice | DECIMAL(10,2) | Price after scan |
| PriceChange | DECIMAL(10,2) | NewPrice - OldPrice |
| ChangePct | DECIMAL(5,2) | % change |
| ScanDate | DATETIME | When scanned |
| DateFrom | DATE | Stay date |
| LogId | INT | Source Log ID |

## Commands

```bash
# Setup (create table)
python price_history.py --connection-string "..." --setup

# Backfill all history from Log (907K+ records)
python price_history.py --connection-string "..." --setup --backfill

# Sync new records (hourly)
python price_history.py --connection-string "..." --sync

# Query hotel price history
python price_history.py --connection-string "..." --hotel 22034 --days 7

# Price trends report (all hotels, 7 days)
python price_history.py --connection-string "..." --report

# Export to CSV
python price_history.py --connection-string "..." --hotel 22034 --csv prices.csv

# Table stats
python price_history.py --connection-string "..." --stats
```

## Example Queries

```sql
-- Price trend for Hilton Bentley last 7 days
SELECT DateFrom, RoomCategory, RoomBoard, OldPrice, NewPrice, PriceChange
FROM [SalesOffice.PriceHistory]
WHERE HotelId = 22034 AND ScanDate >= DATEADD(DAY, -7, GETDATE())
ORDER BY ScanDate;

-- Average price by hotel and date
SELECT HotelId, DateFrom, AVG(NewPrice) as AvgPrice, COUNT(*) as Scans
FROM [SalesOffice.PriceHistory]
GROUP BY HotelId, DateFrom
ORDER BY HotelId, DateFrom;

-- Biggest price drops today
SELECT HotelId, RoomCategory, RoomBoard, OldPrice, NewPrice, PriceChange
FROM [SalesOffice.PriceHistory]
WHERE ScanDate >= CAST(GETDATE() AS DATE) AND PriceChange < -10
ORDER BY PriceChange;

-- Price volatility per hotel
SELECT HotelId, COUNT(*) as Changes,
       AVG(ABS(PriceChange)) as AvgVolatility,
       STDEV(NewPrice) as PriceStdDev
FROM [SalesOffice.PriceHistory]
WHERE ScanDate >= DATEADD(DAY, -7, GETDATE())
GROUP BY HotelId
ORDER BY AvgVolatility DESC;
```
