# SalesOffice Scanning Skill

## Process: Price scanning from Innstant API → push to Zenith/Noovy

### What It Does
Continuously scans hotel room prices from Innstant API, maps them to local categories via `Med_Hotels_ratebycat`, and pushes availability + prices to Zenith channel manager.

### WebJob
- **Name:** AzureWebJob
- **Runtime:** Continuous (Azure App Service)
- **Cycle:** ~14 hours for 1,772 active orders
- **Code:** `webjob-dlls/SalesOfficeService.cs` → `Run()`

### Flow Per Order
```
1. GetInnstantHotelSearchData() → call Innstant API
2. FilterByVenueId() → only hotels with Innstant_ZenithId > 0
3. CreateFlattenedHotels() → flatten to (Hotel, Category, Board, Price)
4. Remap() → INNER JOIN with Med_Hotels_ratebycat
   ├── MATCH → continue
   └── NO MATCH → CaptureMappingMisses() → MappingMisses table
5. DeleteSalesOfficeDetails() → rooms no longer available
   └── Push BookingLimit=0 to Zenith
6. AddSalesOfficeDetails() → new rooms found
   └── Push Rate + Availability to Zenith
7. UpdateSalesOfficeDetails() → price changed
   └── Push new Rate to Zenith
8. UpdateWebJobStatus() → "Api:X; Flat:Y; Map:Z; Miss:W"
```

### Tables
| Table | Purpose |
|-------|---------|
| `SalesOffice.Orders` | Scan commands: hotel + date range |
| `SalesOffice.Details` | Scanned results: category, board, price |
| `SalesOffice.Log` | Audit: price changes, Zenith push results |
| `SalesOffice.MappingMisses` | Unmapped combinations captured |
| `Med_Hotels_ratebycat` | Mapping: hotel+board+category → RPC+ITC |

### WebJobStatus Formats
```
New:  "Completed; Api: 16; Flat: 5; Map: 4; Miss: 1 (20.03.2026 16:42:47)"
Old:  "Completed; Innstant Api Rooms: 13 ; Rooms With Mapping: 5  (17.03.2026 14:51:29)"
```

### Key Metrics
| Metric | How to Check |
|--------|-------------|
| Mapping ratio | Map / Flat from WebJobStatus |
| Miss rate | COUNT(*) FROM MappingMisses WHERE SeenAt >= last hour |
| Cycle time | Total active orders × ~30 sec |
| ORDER=DETAIL | Every order with API>0 should have Details |

### Zenith Push Details
- **URL:** `https://hotel.tools/service/Medici%20new`
- **Auth:** WS-Security (`APIMedici:Medici Live`)
- **Rate Push:** OTA_HotelRateAmountNotifRQ (price)
- **Availability Push:** OTA_HotelAvailNotifRQ (BookingLimit + Open/Close)
- **Delay:** 200ms between pushes

### Related Skills
- **MediMap** (`salesoffice-mapping-gap-skill/`) - fixes mapping gaps
- **autofix_worker** - auto-fixes Type A misses every 10 min
- **Price Override** (`price-override/`) - overrides push prices
- **System Monitor** (`monitor/`) - monitors health

### Troubleshooting
| Issue | Check | Fix |
|-------|-------|-----|
| No new Details | WebJobStatus shows Miss>0 | Fix ratebycat mapping |
| API returns 0 | Hotel not available in Innstant | Wait or check Innstant config |
| WebJob stale | Last log > 30 min ago | Restart App Service |
| Cycle too long | Too many active orders | Deactivate hotels with 0 results |

### SQL Quick Reference
```sql
-- Current scan status
SELECT DestinationId, h.[Name], WebJobStatus
FROM [SalesOffice.Orders] o
LEFT JOIN Med_Hotels h ON h.HotelId = CAST(o.DestinationId AS INT)
WHERE o.IsActive = 1 ORDER BY o.Id DESC;

-- Mapping ratio per hotel
SELECT d.HotelId, h.[Name],
  COUNT(*) as Details,
  SUM(CASE WHEN d.RoomBoard='BB' THEN 1 ELSE 0 END) as BB
FROM [SalesOffice.Details] d
LEFT JOIN Med_Hotels h ON h.HotelId = d.HotelId
WHERE d.IsDeleted = 0 GROUP BY d.HotelId, h.[Name];
```
