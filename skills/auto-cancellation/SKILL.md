# Auto-Cancellation Skill

## Process: Automatically cancel rooms before CX deadline

### What It Does
Continuously monitors purchased rooms (MED_Book) and automatically cancels them before the free cancellation deadline expires, preventing penalty charges.

### WebJob
- **Name:** AutoCancellation
- **Runtime:** Continuous
- **Code:** `MediciAutoCancellation/MainLogic.cs`
- **Cancel Logic:** `EFModel/BaseEF.cs` → `CancelBooking_v2()`

### Flow
```
1. GetBookIdsToCancel()
   └── SELECT PreBookId FROM MED_Book
       WHERE IsActive = true AND CancellationTo <= NOW + 2 days

2. For each PreBookId:
   ├── Find booking in MED_Book
   ├── Switch on Source:
   │   ├── Source=1 (Innstant):
   │   │   └── POST /booking-cancel (REST)
   │   │       Body: { BookingID, CancelReason, Force=false }
   │   └── Source=2 (GoGlobal):
   │       └── SOAP BOOKING_CANCEL_REQUEST (XML)
   │
   ├── Success (status="done"):
   │   ├── MED_Book.IsActive = false
   │   ├── INSERT MED_CancelBook (audit record)
   │   │   CancellationReason = "Cancelled By Auto Cancellation Job"
   │   ├── PushAvailability(BookingLimit=0) → Zenith
   │   └── Add to Queue for snapshot check
   │
   └── Failure:
       ├── INSERT MED_CancelBookError
       ├── Slack notification
       └── Email: "Please cancel manually this rooms"

3. If any manual cancellations needed:
   └── SendGrid email with list of PreBookIds
```

### CX Deadline Logic
```
CancellationTo = deadline from supplier (Innstant/GoGlobal)
Trigger = CancellationTo <= NOW + 2 days
Buffer = 2 days before deadline for safety
```

### Tables
| Table | Purpose |
|-------|---------|
| `MED_Book` | Source: find rooms approaching deadline |
| `MED_CancelBook` | Successful cancellations (audit) |
| `MED_CancelBookError` | Failed cancellation attempts |
| `Queue` | Post-cancellation monitoring |

### MED_CancelBook Fields
| Field | Description |
|-------|-------------|
| Id | Primary key |
| DateInsert | When cancellation was recorded |
| PreBookId | Reference to MED_Book |
| ContentBookingId | Supplier booking ID |
| RequestJson | Full API request sent |
| ResponseJson | Full API response received |
| BookingdetailsJson | Final booking state |
| CancellationReason | "Cancelled By Auto Cancellation Job" |
| CancellationDate | When API confirmed cancellation |

### Error Handling
| Error Type | Cause | Action |
|------------|-------|--------|
| "Could not cancel the booking" | Policy restriction | Flag for manual cancel |
| "cannot cancel booking" | Already cancelled / expired | Log error |
| "Permission to booking force cancellation was denied" | Auth issue | Flag for manual |
| Network timeout | API unavailable | Retry next cycle |

### Retry Logic (Innstant)
- 3 attempts per cancellation
- 2 second delay between retries
- Only retries on "No such host" or "backend not available"

### Notifications
- **Slack:** Failure notification per booking
- **Email (SendGrid):** Batch of failed cancellations
  - Subject: "Please cancel manually this rooms"
  - Body: List of PreBookIds

### Manual Cancellation (Backend API)
```
DELETE /Book/CancelBooking?id={preBookId}
→ Same CancelBooking_v2() method
→ Same flow, just triggered manually
```

### Troubleshooting
| Issue | Check | Fix |
|-------|-------|-----|
| Room not cancelled | MED_Book still IsActive=true | Check CancellationTo date |
| Cancel error | MED_CancelBookError | Check error message, may need manual |
| Penalty charged | CancellationTo already passed | Too late, process failed earlier |
| Zenith still shows room | BookingLimit not pushed | Manual push BookingLimit=0 |

### SQL Quick Reference
```sql
-- Rooms approaching CX deadline
SELECT PreBookId, HotelId, startDate, price,
  CancellationTo, DATEDIFF(DAY, GETDATE(), CancellationTo) as DaysLeft
FROM MED_Book
WHERE IsActive = 1 AND CancellationTo <= DATEADD(DAY, 5, GETDATE())
ORDER BY CancellationTo;

-- Recent cancellations
SELECT Id, PreBookId, ContentBookingId, CancellationReason,
  CancellationDate, DateInsert
FROM MED_CancelBook ORDER BY Id DESC;

-- Cancel errors (last 7 days)
SELECT * FROM MED_CancelBookError
WHERE DateInsert >= DATEADD(DAY, -7, GETDATE())
ORDER BY DateInsert DESC;
```
