# BuyRoom Skill

## Process: Automatic room purchase from suppliers

### What It Does
Continuously monitors opportunities and automatically purchases rooms from the cheapest supplier (Innstant or GoGlobal). Purchased rooms are pushed to Zenith/Noovy for sale.

### WebJob
- **Name:** BuyRoomWebJob
- **Runtime:** Continuous (200ms between cycles)
- **Code:** `MediciBuyRooms/MainLogic.cs`
- **Business Logic:** `SharedLibrary/BuyRoomControl.cs`

### Flow
```
1. GetNextOpportunityToBuy()
   └── SP: MED_GetNextOpportunitiesToBuy
   └── Returns: opportunities with IsActive=true, IsPush=false

2. SearchHotels() on multiple sources
   ├── Source 1: Innstant API
   └── Source 2: GoGlobal API

3. Filter results
   ├── Category must match opportunity
   ├── Board must match opportunity
   ├── Must have free cancellation
   └── Price must be <= BuyPrice

4. BookRooms() - purchase cheapest
   ├── Source 1: ApiInstant.BuyRoom()
   └── Source 2: ApiGoGlobal.BuyRoom()

5. Post-purchase
   ├── InsertPreBook() → MED_PreBook
   ├── InsertBook() → MED_Book (IsActive=true, IsSold=false)
   └── CancellationTo extracted from supplier response

6. PushRoom() - publish to Zenith
   ├── PushRates(PushPrice) → OTA_HotelRateAmountNotifRQ
   ├── PushAvailability(BookingLimit=1, Open) → OTA_HotelAvailNotifRQ
   └── Insert MED_HotelsToPush (DatePush=now)

7. Room is now ACTIVE in Noovy → waiting for guest booking
```

### Tables
| Table | Purpose |
|-------|---------|
| `BackOfficeOPT` | Opportunity header (1 row) |
| `MED_Opportunities` | Rooms × nights (N rows per opportunity) |
| `MED_PreBook` | Pre-booking before purchase |
| `MED_Book` | Purchased room (IsActive, IsSold, CancellationTo) |
| `MED_HotelsToPush` | Push queue for Zenith |
| `Queue` | Post-operation monitoring |

### MED_Book Fields (after purchase)
| Field | Value | Description |
|-------|-------|-------------|
| IsActive | true | Room is live |
| IsSold | false | Not yet booked by guest |
| Source | 1 or 2 | 1=Innstant, 2=GoGlobal |
| Price | buy price | What we paid |
| ContentBookingId | supplier ID | Booking reference |
| SupplierReference | supplier ref | Supplier's reference |
| CancellationType | "fully-refundable" | Cancellation policy |
| CancellationTo | datetime | Free cancel deadline |

### Opportunity Creation
Created via:
- **UI:** POST /Opportunity/InsertOpp
- **Skill:** `skills/insert-opp/insert_opp.py`
- **Price Predictor:** via Insert Opp Skill

### Required Fields for Opportunity
| Field | Type | Description |
|-------|------|-------------|
| HotelId | int | Hotel to buy |
| StartDate/EndDate | date | Stay dates |
| BoardId | int | 1=RO, 2=BB |
| CategoryId | int | 1=Std, 2=Sup, 4=Dlx, 12=Suite |
| BuyPrice | float | Max price to pay |
| PushPrice | float | Price to sell on Noovy |
| MaxRooms | int | Rooms per night (1-30) |
| RatePlanCode | string | Zenith RPC |
| InvTypeCode | string | Zenith ITC |
| ReservationFullName | string | Guest name |

### Suppliers
| Source | Provider | API |
|--------|----------|-----|
| 1 | Innstant | REST + JSON |
| 2 | GoGlobal | SOAP 1.2 XML |

### Troubleshooting
| Issue | Check | Fix |
|-------|-------|-----|
| Room not purchased | MED_Opportunities.IsPush still false | Check if BuyPrice too low |
| Wrong price pushed | MED_HotelsToPush.PushPrice | Update via /Book/UpdatePrice |
| Purchase failed | Check MED_BookError | API error from supplier |
| No free cancellation | Filter rejects | Only free-cancel rooms purchased |

### SQL Quick Reference
```sql
-- Active rooms (purchased, not sold)
SELECT b.PreBookId, h.[Name], b.startDate, b.endDate,
  b.price as BuyPrice, b.CancellationTo, b.source
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.IsActive = 1 AND b.IsSold = 0;

-- Pending opportunities
SELECT * FROM BackOfficeOPT WHERE Status = 1;
```
