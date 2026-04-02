# Reservation Callback Skill

## Process: Handling incoming reservations from Zenith/Noovy

### What It Does
Receives OTA reservation notifications (commit/modify/cancel) from Zenith when a guest books, modifies, or cancels through Noovy or OTA channels. Updates internal state and inventory.

### Endpoint
- **URL:** `POST /ZenithApi/reservation`
- **Protocol:** SOAP XML (OTA_HotelResNotifRQ)
- **Auth:** None (Zenith trusted)
- **Code:** `Backend/Controllers/ZenithApiController.cs`
- **Logic:** `SharedLibrary/PushRoomControl.cs` → `ReservationNotificationCommit()`

### Flow: Commit (New Reservation)
```
Zenith sends OTA_HotelResNotifRQ (ResStatus="Commit")
    │
    ├── 1. Parse XML → ReservationInnstant object
    │   Extract: HotelCode, dates, price, RatePlan, guest info
    │
    ├── 2. InsertReservation() → MED_Reservation
    │
    ├── 3. InsertReservationCustomerName()
    │   └── MedReservationCustomerName (IsLeader=true for primary guest)
    │
    ├── 4. InsertReservationCustomerMoreInfo()
    │   └── Email, address, payment card details
    │
    ├── 5. DoReservation()
    │   ├── FindAvailableRoom() → find matching MED_Book
    │   │   Match: HotelCode + AdultCount + ChildrenCount + dates
    │   ├── MED_Book.IsSold = true
    │   ├── MED_Book.SoldId = reservationId
    │   ├── MED_Opportunities.IsActive = false
    │   └── PushAvailability() → update Zenith (one less room)
    │
    └── 6. Email notification: "Committed, ReservationId: X"
```

### Flow: Modify (Change Reservation)
```
Zenith sends ResStatus="Modify"
    │
    ├── InsertReservationModify() → Med_ReservationModify
    ├── InsertReservationModifyCustomerName() → updated names
    ├── InsertReservationModifyCustomerMoreInfo() → updated contact
    └── No automatic state changes (manual review)
```

### Flow: Cancel (Guest Cancels)
```
Zenith sends ResStatus="Cancel"
    │
    ├── InsertReservationCancel() → Med_ReservationCancel
    ├── MED_Reservation.IsCanceled = true
    ├── MED_Book.IsSold = false (room released)
    ├── PushAvailability() → Zenith (room available again)
    └── Email notification: "Canceled, ReservationId: X"
```

### Tables
| Table | Purpose |
|-------|---------|
| `MED_Reservation` | Main reservation record |
| `Med_ReservationCustomerName` | Guest names (IsLeader for primary) |
| `Med_ReservationCustomerMoreInfo` | Email, address, payment card |
| `Med_ReservationCancel` | Cancellation records |
| `Med_ReservationModify` | Modification records |
| `Med_ReservationModifyCustomerName` | Modified guest names |
| `Med_ReservationModifyCustomerMoreInfo` | Modified contact info |
| `Med_ReservationNotificationLog` | All callback events |

### MED_Reservation Key Fields
| Field | Description |
|-------|-------------|
| Id | Primary key |
| ResStatus | "Commit" / "Modify" / "Cancel" |
| HotelCode | Zenith venue ID (e.g. 5109, 5080) |
| Datefrom / Dateto | Guest stay dates |
| AmountAfterTax | Booking total price |
| CurrencyCode | Currency (USD) |
| RatePlanCode | Rate plan used |
| RoomTypeCode | Room type (STD, DLX, SUI) |
| AdultCount / ChildrenCount | Guests |
| UniqueId | OTA unique identifier |
| IsApproved | Manual approval flag |
| IsCanceled | True if cancelled |
| **NightlyRates** | **JSON array of per-night prices (NEW — required)** |
| **CancellationPolicy** | **Free text cancellation terms (NEW — required)** |
| **CancellationDeadline** | **Last free cancellation date (NEW — required)** |

### NEW: Required Fields for Cross-System Sharing

When reservations are shared with the prediction system (via `shared-reports/`), the following fields **MUST** be populated:

```json
{
  "BookingNumber": "1304985",
  "Source": "scraper",
  "ResStatus": "Commit",
  "HotelName": "Riu Plaza Miami Beach",
  "HotelCode": "5109",
  "DateFrom": "2026-05-21",
  "DateTo": "2026-05-24",
  "AmountAfterTax": 1000.07,
  "CurrencyCode": "USD",
  "RoomTypeCode": "DLX",
  "MealPlan": "RO",
  "AdultCount": 2,
  "ChildrenCount": 0,
  "GuestFirstName": "Francisco E",
  "GuestLastName": "Romero",
  "NightlyRates": "[{\"date\":\"2026-05-21\",\"amount\":333.36},{\"date\":\"2026-05-22\",\"amount\":333.36},{\"date\":\"2026-05-23\",\"amount\":333.35}]",
  "CancellationPolicy": "Free cancellation until 2026-05-18",
  "CancellationDeadline": "2026-05-18"
}
```

#### Where to find in Noovy:
| Field | Location in Noovy |
|-------|-------------------|
| HotelCode | Header next to hotel name (#XXXX) |
| NightlyRates | Booking detail page → nightly price table |
| CancellationPolicy | Booking detail page → Cancellation Policy section |
| CancellationDeadline | Extracted from CancellationPolicy text |

#### Output location:
Reports go to GitHub for cross-project access:
```
https://raw.githubusercontent.com/amitpo23/medici-price-prediction/main/shared-reports/
```

### Guest Data (MedReservationCustomerName)
| Field | Description |
|-------|-------------|
| NamePrefix | Mr., Ms., Dr. |
| GivenName | First name |
| Surname | Last name |
| IsLeader | true = primary guest |

### Guest Contact (MedReservationCustomerMoreInfo)
| Field | Description |
|-------|-------------|
| Email | Guest email |
| CityName / CountryName | Address |
| CardNumber | Payment card (masked) |
| CardType | Visa, MC, etc. |
| ExpireDate | MM/YY |

### Notifications
- **Email (SendGrid):** Sent on commit and cancel
- **Slack:** Queue additions logged
- **Recipients:** Configured in `appsettings.json`

### Troubleshooting
| Issue | Check | Fix |
|-------|-------|-----|
| Reservation not received | Med_ReservationNotificationLog | Check Zenith webhook config |
| Room not matched | FindAvailableRoom returns null | Check MED_Book availability |
| Guest name missing | MedReservationCustomerName empty | Check XML parsing |
| Double booking | Multiple books for same dates | Check FindAvailableRoom logic |

### SQL Quick Reference
```sql
-- Recent reservations
SELECT Id, ResStatus, HotelCode, Datefrom, Dateto,
  AmountAfterTax, IsCanceled, DateInsert
FROM MED_Reservation ORDER BY Id DESC;

-- Guest details for a reservation
SELECT r.Id, cn.GivenName, cn.Surname, cn.IsLeader,
  ci.Email, ci.CityName
FROM MED_Reservation r
LEFT JOIN Med_ReservationCustomerName cn ON cn.ReservationId = r.Id
LEFT JOIN Med_ReservationCustomerMoreInfo ci ON ci.ReservationId = r.Id
WHERE r.Id = @reservationId;
```
