# Sales & Reservations Management Skill

## Process: Track sold rooms, manage reservations, update guest names

### What It Does
Provides visibility into sold rooms, reservation details, cancellations, and modifications. Handles guest name updates and reservation status management.

### Backend Controllers
- **SalesRoomController:** `/SalesRoom/*` - Sold rooms + details
- **ReservationController:** `/Reservation/*` - Reservation management
- **BookController:** `/Book/*` - Active rooms + cancellation

### API Endpoints

#### Sales Room
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/SalesRoom/Sales` | All sold rooms |
| GET | `/SalesRoom/Reservations` | All reservation records |
| GET | `/SalesRoom/Purchased` | Purchase statistics (graph) |
| GET | `/SalesRoom/Sold` | Sales statistics (graph) |
| GET | `/SalesRoom/GetDetails?id=X` | Sale details with Zenith comparison |
| POST | `/SalesRoom/UpdateNameSuccess` | Confirm guest name update |

#### Reservations
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/Reservation/Log` | All notification events |
| GET | `/Reservation/ReservationCancel` | Cancellation requests list |
| GET | `/Reservation/ReservationModify` | Modification requests list |
| GET | `/Reservation/GetDetails?soldId=X` | Full reservation with guest info |

#### Bookings (Active Rooms)
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/Book/Bookings` | All active bookings |
| GET | `/Book/Canceled` | Cancelled bookings |
| DELETE | `/Book/CancelBooking?id=X` | Cancel a booking manually |
| DELETE | `/Book/SetCancelStatus?id=X` | Update cancel status |
| POST | `/Book/UpdatePrice` | Update push price |

### Sales View Data (SalesOrderBackOffice)
```
{
  Id, SoldId, PreBookId, ContentBookingId,
  HotelId, ZenithId, HotelName,
  DateInsert, StartDate, EndDate,
  Price (buy), PushPrice (sell),
  Board, Category,
  ReservationFullName (lead guest),
  StatusChangeName (0=unknown, 1=pending, 2=updated),
  Provider, SupplierReference,
  RefAgency, RefEmail,
  IsActive, IsSold, CancellationTo
}
```

### StatusChangeName Flow
```
0 = Unknown (initial)
1 = Pending name update (name change requested)
2 = Name updated successfully

POST /SalesRoom/UpdateNameSuccess
  → Updates MedBook.StatusChangeName
  → Updates MedBook.NameUpdate
```

### Reservation Lifecycle
```
COMMITTED
  MED_Reservation: ResStatus="Commit", IsCanceled=false
  MED_Book: IsSold=true, SoldId=reservationId
      │
      ├── MODIFIED (guest changes)
      │   Med_ReservationModify record created
      │   Guest name/contact updated
      │   No state change on MED_Book
      │
      └── CANCELLED (guest cancels)
          Med_ReservationCancel record created
          MED_Reservation.IsCanceled = true
          MED_Book.IsSold = false (room released)
          Availability updated in Zenith
```

### Tables
| Table | Purpose |
|-------|---------|
| `MED_Book` | Purchased rooms (IsActive, IsSold, SoldId) |
| `MED_Reservation` | Reservation records from Zenith |
| `Med_ReservationCustomerName` | Guest names |
| `Med_ReservationCustomerMoreInfo` | Contact + payment |
| `Med_ReservationCancel` | Cancellation records |
| `Med_ReservationModify` | Modification records |
| `Med_ReservationNotificationLog` | All callback audit |

### Notifications
| Event | Channel | Content |
|-------|---------|---------|
| Reservation committed | Email | "Committed, ReservationId: X" |
| Reservation cancelled | Email | "Canceled, ReservationId: X" |
| Manual cancel failed | Slack + Email | "Please cancel manually" |

### Angular UI Pages
| URL | Page | Data Source |
|-----|------|-------------|
| `/dashboard/sales-office/sales-office-orders` | Opportunities | /Opportunity/Opportunities |
| `/dashboard/sales-office/sales-office-details` | Active Rooms | /Book/Bookings |
| `/dashboard/sales-room` | Sales Room | /SalesRoom/Sales |
| `/dashboard/reservation` | Reservations | /Reservation/* |

### Troubleshooting
| Issue | Check | Fix |
|-------|-------|-----|
| Sale not showing | MED_Book.IsSold = false | Check DoReservation() |
| Guest name wrong | MedReservationCustomerName | POST /SalesRoom/UpdateNameSuccess |
| Reservation missing | Med_ReservationNotificationLog | Check Zenith callback |
| Cancel not reflected | MED_Book.IsSold still true | Check CancelReservation() |

### SQL Quick Reference
```sql
-- All sold rooms
SELECT b.PreBookId, h.[Name], b.startDate, b.endDate,
  b.price as BuyPrice, b.SoldId,
  cn.GivenName, cn.Surname
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
LEFT JOIN MED_Reservation r ON r.Id = b.SoldId
LEFT JOIN Med_ReservationCustomerName cn ON cn.ReservationId = r.Id AND cn.IsLeader = 1
WHERE b.IsSold = 1;

-- Recent reservations with status
SELECT r.Id, r.ResStatus, r.HotelCode, r.Datefrom, r.Dateto,
  r.AmountAfterTax, r.IsCanceled, r.DateInsert
FROM MED_Reservation r ORDER BY r.Id DESC;

-- Active rooms (purchased, not yet sold)
SELECT b.PreBookId, h.[Name], b.startDate, b.endDate,
  b.price, b.CancellationTo,
  DATEDIFF(DAY, GETDATE(), b.CancellationTo) as DaysToCancel
FROM MED_Book b
LEFT JOIN Med_Hotels h ON h.HotelId = b.HotelId
WHERE b.IsActive = 1 AND b.IsSold = 0
ORDER BY b.CancellationTo;
```
