# LastPriceUpdate & Cancel+Rebuy Skill

## Process: Market price monitoring + automatic rebuy at lower price

### What It Does
Every 6 hours, checks the current market price for every active booking. Updates `LastPrice` in MED_Book. If the price dropped more than 10% and the room is unsold, automatically buys a cheaper replacement and cancels the expensive one.

### WebJob
- **Name:** LastPriceUpdate
- **Executable:** LastPriceUpdate.exe
- **Runtime:** Continuous, cycles every 6 hours
- **Threading:** Single thread (threadCount=1)
- **Source:** Decompiled from Azure Kudu (`webjob-dlls/LastPriceUpdate/`)
- **Framework:** .NET 9.0

### Full Flow
```
Every 6 hours:
  1. GetAllBookings() → all active MED_Book records
  2. GetAllSources() → [1=Innstant, 2=GoGlobal]
  3. For each booking (5-10 sec random delay):

     a. GetBookingDetailsJsonAsync(ContentBookingId)
        → Innstant API: get original booking details
        → Extract: hotel, dates, category, board, pax

     b. For each source:
        SearchHotels(hotel, dates, source)
        → Get current market prices
        → Filter: free cancellation + same category/board/pax

     c. IF no results:
        LastPrice = PushPrice (fallback)
        DateLastPrice = now

     d. IF results found:
        LastPrice = cheapest price
        DateLastPrice = now

     e. CANCEL+REBUY CHECK:
        percent = (BuyPrice / LastPrice × 100) - 100
        IF percent > 10% AND NOT sold:
          → BookRooms(cheaperRoom) FIRST
          → IF success: CancelBooking_v2(oldRoom)
          → PushRoom(hotel) to Zenith
```

### Cancel+Rebuy Logic
```
Example:
  BuyPrice = $200 (what we paid)
  LastPrice = $160 (current market)
  Percent = (200/160 × 100) - 100 = 25%
  25% > 10% threshold → REBUY!

  1. Buy new room at $160
  2. Cancel old room at $200 (free cancellation)
  3. Push new room to Zenith
  4. Saved: $40
```

### Safety Mechanisms
| Safety | Detail |
|--------|--------|
| Buy before cancel | New room purchased BEFORE old one cancelled |
| IsSold check | Never rebuy a room a guest already booked |
| Free cancellation only | Only processes fully-refundable bookings |
| Exclusion list | 59 hardcoded ContentBookingIds skipped |
| Source validation | Checks hotel exists in source before searching |
| Error handling | Logs failures, continues to next booking |

### Timing
| Parameter | Value |
|-----------|-------|
| Cycle interval | 6 hours |
| Per booking delay | 5-10 seconds (random) |
| Per source delay | 2 seconds |
| Thread count | 1 (single thread) |
| Singleton | true |

### Tables
| Table | Role |
|-------|------|
| `MED_Book` | Source: active bookings. Updated: LastPrice, DateLastPrice |
| `MED_Book` (new) | New booking created by rebuy |
| `MED_CancelBook` | Cancellation record for old booking |
| `MED_HotelsToPush` | Push queue for new room |

### MED_Book Fields Updated
| Field | Value | Description |
|-------|-------|-------------|
| LastPrice | cheapest market price | Current cost of same room |
| DateLastPrice | now | When checked |

### Cancellation Reason
When Cancel+Rebuy triggers:
```
CancellationReason = "Cancelled By Last Price Update Job"
```
This distinguishes from:
- `"Cancelled By Auto Cancellation Job"` (CX deadline)
- Manual cancellation (no specific reason)

### Monitoring
Check in MED_CancelBook:
```sql
-- Recent rebuy cancellations
SELECT c.Id, c.PreBookId, c.contentBookingID,
  c.CancellationReason, c.CancellationDate
FROM MED_CancelBook c
WHERE c.CancellationReason = 'Cancelled By Last Price Update Job'
ORDER BY c.Id DESC;
```

Check LastPrice freshness:
```sql
-- When was last update cycle?
SELECT MAX(DateLastPrice) as LastCycle,
  DATEDIFF(HOUR, MAX(DateLastPrice), GETDATE()) as HoursAgo
FROM MED_Book WHERE DateLastPrice IS NOT NULL;

-- Books with biggest savings
SELECT b.id, h.[Name], b.price as BuyPrice, b.lastPrice,
  b.lastPrice - b.price as Savings, b.startDate
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.IsActive = 1 AND b.lastPrice IS NOT NULL
ORDER BY b.lastPrice - b.price DESC;

-- Books eligible for rebuy (price dropped >10%, unsold)
SELECT b.id, h.[Name], b.price, b.lastPrice,
  (b.price / b.lastPrice * 100) - 100 as PctCheaper,
  b.startDate, b.CancellationTo
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.IsActive = 1 AND b.IsSold = 0
  AND b.lastPrice IS NOT NULL
  AND b.lastPrice < b.price
  AND (b.price / b.lastPrice * 100) - 100 > 10
ORDER BY PctCheaper DESC;
```

### API Calls Made
| API | Purpose |
|-----|---------|
| Innstant GetBookingDetails | Get original booking info |
| Innstant/GoGlobal SearchHotels | Search current prices |
| Innstant/GoGlobal BookRooms | Purchase cheaper room |
| Innstant/GoGlobal CancelBooking | Cancel expensive room |
| Zenith PushRates + PushAvailability | Update channel manager |

### Integration for Third-Party Systems
```python
# Read LastPrice data
from data_explorer import HotelDataExplorer
explorer = HotelDataExplorer(connection_string)

# All active bookings with price comparison
bookings = explorer.get_bookings()
for b in bookings:
    if b['lastPrice'] and b['price']:
        savings = b['lastPrice'] - b['price']
        print(f"Hotel {b['HotelId']}: Bought ${b['price']:.0f}, Now ${b['lastPrice']:.0f}, Diff ${savings:.0f}")

# Check rebuy candidates
data = explorer.run_sql("""
    SELECT id, HotelId, price, lastPrice,
      (price / lastPrice * 100) - 100 as PctCheaper
    FROM MED_Book
    WHERE IsActive = 1 AND IsSold = 0
      AND lastPrice < price
      AND (price / lastPrice * 100) - 100 > 10
""")
```

### Troubleshooting
| Issue | Check | Fix |
|-------|-------|-----|
| LastPrice not updating | DateLastPrice > 6 hours old | Check WebJob status in Azure |
| Rebuy not triggering | Percent < 10% threshold | Price hasn't dropped enough |
| Rebuy failed | Log: "BookRooms FAILED" | No available room at cheaper price |
| Wrong LastPrice | Check search filters | Category/board/pax mismatch |
| Excluded booking | In hardcoded exclusion list | Remove from list (requires deploy) |

### Files
| File | Location |
|------|----------|
| Decompiled source | `webjob-dlls/LastPriceUpdate/LastPriceUpdate_decompiled.cs` |
| DLL | `webjob-dlls/LastPriceUpdate/LastPriceUpdate.dll` |
| Config | `webjob-dlls/LastPriceUpdate/appsettings.json` |
| Documentation | `salesoffice/10-lastprice-update-process.md` |
| Azure exe | `app_data/jobs/continuous/LastPriceUpdate/LastPriceUpdate.exe` |
