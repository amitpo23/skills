# Active Rooms - Complete Guide for Third-Party Integration

**Date:** 2026-03-24
**Purpose:** Full reference for systems integrating with Active Rooms (MED_Book)

---

## 1. What Are Active Rooms?

Active Rooms are hotel rooms that Medici has **purchased** from suppliers (Innstant/GoGlobal) and is **selling** through Zenith/Noovy channel manager. Each room is a row in `MED_Book`.

### Room Lifecycle

```
Opportunity Created (BackOfficeOPT + MED_Opportunities)
    ↓
BuyRoom WebJob purchases room from supplier
    ↓
MED_PreBook created (pre-booking details)
    ↓
MED_Book created (IsActive=1, IsSold=0)  ← ACTIVE ROOM
    ↓
Push to Zenith (price + availability)
    ↓
├── Guest books → IsSold=1, SoldId=ReservationId
├── Price drops >10% → Cancel+Rebuy (LastPriceUpdate)
├── CX deadline approaching → AutoCancellation
└── Manual cancel from UI
    ↓
IsActive=0 (room closed)
```

### Current Stats

| Metric | Value |
|--------|-------|
| Total MED_Book records | 5,058 |
| Active + Unsold | 93 |
| Active + Sold | 0 |
| Inactive | 4,965 |
| With LastPrice data | 3,378 |

---

## 2. MED_Book Table Schema

### Core Fields

| Column | Type | Description |
|--------|------|-------------|
| `id` | INT (PK) | Auto-increment ID |
| `PreBookId` | INT | Unique booking reference (use this for API calls) |
| `OpportunityId` | INT | FK to MED_Opportunities |
| `HotelId` | INT | FK to Med_Hotels |
| `contentBookingID` | NVARCHAR(50) | Supplier booking ID |
| `startDate` | DATE | Check-in date |
| `endDate` | DATE | Check-out date |
| `NumberOfNights` | INT | Stay length |

### Pricing Fields

| Column | Type | Description |
|--------|------|-------------|
| `price` | FLOAT | **Buy price** - what we paid the supplier |
| `lastPrice` | FLOAT | **Market price** - current cheapest price (updated every 6h) |
| `DateLastPrice` | DATE | When lastPrice was last checked |
| `servicesPrice` | FLOAT | Service price from supplier |
| `CurrencyId` | INT | Currency |

### Push Price (from MED_Opportunities)

| Column | Type | Description |
|--------|------|-------------|
| `PushPrice` | FLOAT | **Selling price** - what Zenith shows to customers |
| `PushInvTypeCode` | NVARCHAR(50) | Room type code for Zenith (Stnd/SPR/DLX/Suite) |
| `PushRatePlanCode` | NVARCHAR(50) | Rate plan code for Zenith |
| `PushHotelCode` | INT | Zenith venue ID |

*Note: PushPrice is stored in MED_Opportunities, not MED_Book.*

### Status Fields

| Column | Type | Description |
|--------|------|-------------|
| `IsActive` | BIT | 1=room is live and available |
| `IsSold` | BIT | 1=guest booked this room |
| `SoldId` | INT | FK to MED_Reservation (when sold) |
| `source` | INT | 1=Innstant, 2=GoGlobal |
| `StatusChangeName` | INT | Name update status |
| `NameUpdate` | BIT | Name mapping flag |

### Cancellation Fields

| Column | Type | Description |
|--------|------|-------------|
| `CancellationType` | NVARCHAR | 'fully-refundable' (always for auto-purchased) |
| `CancellationFrom` | DATETIME | Earliest free cancel date |
| `CancellationTo` | DATETIME | **CX Deadline** - cancel before this or pay penalty |
| `CancellationPenalty` | FLOAT | Penalty amount if cancelled late |

### Supplier Fields

| Column | Type | Description |
|--------|------|-------------|
| `providers` | NVARCHAR | Supplier name (e.g., 'TBO', 'goglobal') |
| `supplierReference` | NVARCHAR(50) | Supplier booking reference |
| `code` | NVARCHAR(150) | Innstant room code |
| `ReferenceAgency` | NVARCHAR(150) | Agency reference |
| `ReferenceVoucherEmail` | NVARCHAR(150) | Voucher email |
| `RequestJson` | NVARCHAR(MAX) | Full booking request JSON |
| `ResponseJson` | NVARCHAR(MAX) | Full booking response JSON |

### Guest Fields

| Column | Type | Description |
|--------|------|-------------|
| `PaxAdultsCount` | INT | Number of adults |
| `PaxChildrenCount` | INT | Number of children |
| `UserId` | INT | User who created the booking |

---

## 3. Available Actions

### 3.1 Read Active Rooms

```sql
-- All active unsold rooms
SELECT b.id, b.PreBookId, b.HotelId, h.[Name], h.Innstant_ZenithId,
       b.price as BuyPrice, b.startDate, b.endDate,
       b.lastPrice, b.DateLastPrice,
       o.PushPrice, o.PushInvTypeCode, o.PushRatePlanCode,
       o.BoardId, o.CategoryId,
       b.CancellationType, b.CancellationTo,
       b.providers, b.supplierReference
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
LEFT JOIN [MED_ֹOֹֹpportunities] o ON o.OpportunityId = b.OpportunityId
WHERE b.IsActive = 1 AND b.IsSold = 0
ORDER BY b.startDate;
```

```bash
# Via skill:
python push_price.py --connection-string "..." --list
```

### 3.2 Update Push Price

Change the selling price of a room and push to Zenith.

```bash
# Single room
python push_price.py --connection-string "..." --prebook-id 10832 --push-price 250.00 --live

# Bulk CSV
python push_price.py --connection-string "..." --csv prices.csv --live
```

**What happens:**
1. Stored procedure `Med_updateNewPrice` validates and updates
2. MED_Opportunities.PushPrice updated
3. MED_HotelsToPush entry created
4. PushRoomControl pushes new price to Zenith
5. Zenith/Noovy shows new price

**Constraints:**
- PushPrice must be > BuyPrice (no selling at loss)
- Room must be IsActive=1 AND IsSold=0
- Max margin: 100% above buy price

### 3.3 Read Price History

```sql
-- LastPrice vs BuyPrice for active rooms
SELECT b.id, b.PreBookId, h.[Name],
       b.price as BuyPrice,
       b.lastPrice as MarketPrice,
       b.lastPrice - b.price as Diff,
       b.DateLastPrice,
       o.PushPrice as SellingPrice,
       b.startDate
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
LEFT JOIN [MED_ֹOֹֹpportunities] o ON o.OpportunityId = b.OpportunityId
WHERE b.IsActive = 1
ORDER BY b.lastPrice - b.price DESC;
```

### 3.4 Find Rebuy Candidates

Rooms where market price dropped significantly - could cancel and rebuy cheaper.

```sql
-- Rooms eligible for rebuy (>10% cheaper)
SELECT b.id, b.PreBookId, h.[Name],
       b.price as BuyPrice, b.lastPrice as MarketPrice,
       (b.price / b.lastPrice * 100) - 100 as PctCheaper,
       b.startDate, b.CancellationTo
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.IsActive = 1 AND b.IsSold = 0
  AND b.lastPrice IS NOT NULL AND b.lastPrice < b.price
  AND (b.price / b.lastPrice * 100) - 100 > 10
ORDER BY PctCheaper DESC;
```

### 3.5 Check Cancellation Deadlines

```sql
-- Rooms approaching CX deadline (next 7 days)
SELECT b.id, b.PreBookId, h.[Name],
       b.price, b.startDate,
       b.CancellationTo,
       DATEDIFF(DAY, GETDATE(), b.CancellationTo) as DaysLeft
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.IsActive = 1
  AND b.CancellationTo <= DATEADD(DAY, 7, GETDATE())
ORDER BY b.CancellationTo;
```

### 3.6 View Booking Details

```sql
-- Full booking details including supplier data
SELECT b.*, h.[Name] as HotelName
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.PreBookId = 10832;
```

### 3.7 View Cancellation History

```sql
-- Recent cancellations
SELECT c.Id, c.PreBookId, c.contentBookingID,
       c.CancellationReason, c.CancellationDate, c.DateInsert
FROM MED_CancelBook c
ORDER BY c.Id DESC;

-- Cancellation errors
SELECT * FROM MED_CancelBookError
ORDER BY Id DESC;
```

### 3.8 View Push Queue

```sql
-- Rooms waiting to be pushed to Zenith
SELECT h.Id, h.BookId, h.OpportunityId,
       h.DateInsert, h.DatePush, h.IsActive, h.Error
FROM MED_HotelsToPush h
WHERE h.IsActive = 1;
```

---

## 4. Related Tables

### MED_Opportunities (linked via OpportunityId)

Contains purchase parameters and push configuration:

| Key Column | Description |
|------------|-------------|
| PushPrice | Current selling price |
| PushInvTypeCode | Zenith room type |
| PushRatePlanCode | Zenith rate plan |
| PushHotelCode | Zenith venue ID |
| BoardId | 1=RO, 2=BB |
| CategoryId | 1=Standard, 2=Superior, 4=Deluxe, 12=Suite |
| IsActive | Opportunity active |
| IsPush | Already pushed |
| IsSale | Room sold |

### MED_PreBook (linked via PreBookId)

Contains pre-booking details from supplier search:

| Key Column | Description |
|------------|-------------|
| Code | Innstant room code |
| CancellationType | Refund policy |
| ProviderId | Supplier ID |
| ProviderName | Supplier name |
| Token | Booking token |

### MED_HotelsToPush

Queue for pushing rates/availability to Zenith:

| Column | Description |
|--------|-------------|
| BookId | PreBookId reference |
| OpportunityId | Opportunity reference |
| DatePush | When pushed (NULL=pending) |
| IsActive | 1=pending, 0=pushed |
| Error | Error message if failed |

### MED_CancelBook

Successful cancellation records:

| Column | Description |
|--------|-------------|
| PreBookId | Cancelled booking |
| CancellationReason | Why cancelled |
| RequestJson | API request sent |
| ResponseJson | API response |

---

## 5. Automated Processes

| Process | What It Does | Frequency |
|---------|-------------|-----------|
| **LastPriceUpdate** (C# WebJob) | Updates lastPrice from market | Every 6 hours |
| **LastPrice Cleanup** (Python) | Fixes lastPrice=PushPrice bug | Every 1 hour |
| **Cancel+Rebuy** (C# WebJob) | If market price dropped >10%, buys cheaper and cancels old | Part of LastPriceUpdate |
| **AutoCancellation** (C# WebJob) | Cancels rooms 2 days before CX deadline | Continuous |
| **PushRoomControl** | Pushes new prices to Zenith | Continuous (picks up MED_HotelsToPush) |
| **BuyRoom** (C# WebJob) | Purchases rooms from suppliers | Continuous |

---

## 6. Key Business Rules

| Rule | Description |
|------|-------------|
| **Fully-refundable only** | BuyRoom only purchases rooms with free cancellation |
| **Never sell at loss** | PushPrice must be > BuyPrice |
| **Auto-cancel before deadline** | AutoCancellation runs 2 days before CancellationTo |
| **Rebuy threshold 10%** | If market price drops >10%, cancel and buy cheaper |
| **Guest priority** | If IsSold=1, never auto-cancel (guest has booked) |
| **One room per night** | Each MED_Book = 1 room for 1 night |

---

## 7. Price Fields Summary

```
BuyPrice (MED_Book.price)
  = What we PAID the supplier
  = Set once at purchase, never changes

PushPrice (MED_Opportunities.PushPrice)
  = What we SELL to customers via Zenith
  = Can be updated via Med_updateNewPrice
  = Must be > BuyPrice

LastPrice (MED_Book.lastPrice)
  = Current MARKET price (cheapest available)
  = Updated every 6 hours by LastPriceUpdate
  = Used for Cancel+Rebuy decisions

Margin = PushPrice - BuyPrice (our profit)
Savings = BuyPrice - LastPrice (how much we saved vs current market)
```

---

## 8. DB Permissions for External Systems

```sql
-- Read access (already granted to prediction_reader):
GRANT SELECT ON [dbo].[MED_Book] TO [prediction_reader];
GRANT SELECT ON [dbo].[MED_ֹOֹֹpportunities] TO [prediction_reader];
GRANT SELECT ON [dbo].[Med_Hotels] TO [prediction_reader];

-- Push price updates:
GRANT EXECUTE ON [dbo].[Med_updateNewPrice] TO [prediction_reader];

-- If using direct table access instead of SP:
-- GRANT UPDATE ON [dbo].[MED_ֹOֹֹpportunities] TO [prediction_reader];
-- GRANT INSERT ON [dbo].[MED_HotelsToPush] TO [prediction_reader];
```

---

## 9. Python Skill API

```python
from push_price import ActiveRoomsPushPrice

# Initialize
skill = ActiveRoomsPushPrice(connection_string, live=True)

# List all active rooms
rooms = skill.list_active_rooms()
for room in rooms:
    print(f"PreBook {room['PreBookId']}: Buy ${room['BuyPrice']:.2f}, Push ${room['PushPrice']}")

# Update single room price
result = skill.update_push_price(
    prebook_id=10832,
    new_push_price=250.00,
    created_by="PricePredictor"
)
# result = {"status": "updated", "zenith_push": "success", ...}

# Bulk update from CSV
skill.update_from_csv("prices.csv", created_by="PricePredictor")

# Save audit log
skill.save_audit()

skill.close()
```

---

## 10. CSV Format for Bulk Updates

```csv
prebook_id,push_price
10832,250.00
10831,280.00
10830,275.00
```

---

## 11. Common Queries for Analytics

```sql
-- Revenue analysis: margin per room
SELECT b.id, h.[Name], b.price as Cost, o.PushPrice as Revenue,
       o.PushPrice - b.price as Margin,
       (o.PushPrice / b.price - 1) * 100 as MarginPct
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
LEFT JOIN [MED_ֹOֹֹpportunities] o ON o.OpportunityId = b.OpportunityId
WHERE b.IsActive = 1 AND b.IsSold = 0
ORDER BY MarginPct DESC;

-- Rooms by hotel
SELECT h.[Name], COUNT(*) as Rooms,
       AVG(b.price) as AvgCost, AVG(o.PushPrice) as AvgPush
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
LEFT JOIN [MED_ֹOֹֹpportunities] o ON o.OpportunityId = b.OpportunityId
WHERE b.IsActive = 1
GROUP BY h.[Name]
ORDER BY COUNT(*) DESC;

-- Upcoming CX deadlines
SELECT h.[Name], b.startDate, b.CancellationTo,
       DATEDIFF(DAY, GETDATE(), b.CancellationTo) as DaysLeft,
       b.price, b.lastPrice
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.IsActive = 1 AND b.IsSold = 0
ORDER BY b.CancellationTo;

-- Purchase history by month
SELECT FORMAT(DateInsert, 'yyyy-MM') as Month,
       COUNT(*) as Purchased, SUM(price) as TotalCost
FROM MED_Book
GROUP BY FORMAT(DateInsert, 'yyyy-MM')
ORDER BY Month DESC;
```
