---
name: booking-reconciliation
description: Cross-system booking reconciliation — compares bookings across Medici DB, Innstant API, and Hotel.Tools/Zenith to detect missing or mismatched reservations. Uses API calls and browser automation (agent-browser) for verification.
---

# Booking Reconciliation Skill

## Purpose
Detect booking mismatches between three interconnected hotel booking systems:
1. **Medici** (internal DB) — source of truth for room purchases and sales
2. **Innstant** (supplier API) — external booking platform (Source=1)
3. **Hotel.Tools / Zenith** (channel manager) — reservation management portal

## What this skill detects
- Bookings in Medici that don't exist in Innstant (MissingInInnstant)
- Sold bookings without matching Zenith reservations (MissingReservation)
- Orphaned Zenith reservations with no Medici booking (OrphanedReservation)
- Price mismatches >5% between systems (PriceMismatch)
- Status conflicts — cancelled in Innstant but active in Medici (StatusMismatch)
- Date mismatches between systems (DateMismatch)

## Architecture

### Data Sources
| System | Method | Endpoint |
|--------|--------|----------|
| Medici DB | SQL (ADO.NET) | `medici-sql-server.database.windows.net` |
| Innstant API | REST/JSON | `https://book.mishor5.innstant-servers.com/booking-details/{id}` |
| Innstant B2B | Browser (agent-browser) | `https://b2b.innstantconnect.com/` |
| Hotel.Tools | Browser (agent-browser) | `https://hotel.tools/` |

### Authentication
- **Innstant API**: `aether-access-token` + `aether-application-key` headers
- **Innstant B2B Portal**: Account/Agent/Password login
- **Hotel.Tools**: Account/Agent/Password login

### Database Tables
- `MED_Book` — Active bookings (PreBookId, contentBookingID, HotelId, Source, Price, IsSold, IsActive)
- `Med_Reservation` — Zenith reservations (HotelCode, UniqueId, ResStatus, DateFrom, DateTo, AmountAfterTax)
- `SalesOfficeOrders` — Sales order pipeline (WebJobStatus, DateFrom, DateTo, IsActive)

## Services (C# / .NET 9.0)

| File | Purpose |
|------|---------|
| `Services/BookingReconciliationService.cs` | Core reconciliation logic — loads from DB, compares, detects mismatches |
| `Services/InnstantApiClient.cs` | Innstant booking-details API wrapper with rate limiting (5 concurrent) |
| `Services/BrowserReconciliationService.cs` | agent-browser CLI wrapper — automates B2B and Hotel.Tools login + verification |
| `Services/ReconciliationBackgroundService.cs` | Hourly background service (configurable interval) |

## API Endpoints

| Endpoint | Description |
|----------|-------------|
| `GET /api/reconciliation/run?hours=24` | Run reconciliation manually (configurable lookback) |
| `GET /api/reconciliation/status` | Get last reconciliation report |
| `GET /api/reconciliation/history?last=20` | View reconciliation history |
| `GET /api/reconciliation/innstant/{bookingId}` | Verify single booking against Innstant |

## Configuration (appsettings.json)

```json
{
  "Reconciliation": {
    "Enabled": true,
    "IntervalMinutes": 60,
    "LookbackHours": 24,
    "Innstant": {
      "BookUrl": "https://book.mishor5.innstant-servers.com",
      "AccessToken": "<aether-access-token>",
      "ApplicationKey": "<aether-application-key>"
    },
    "Browser": {
      "InnstantB2BUrl": "https://b2b.innstantconnect.com/",
      "InnstantAccount": "Medici",
      "InnstantAgent": "Zvi",
      "InnstantPassword": "<password>",
      "HotelToolsUrl": "https://hotel.tools/",
      "HotelToolsAccount": "Medici LIVE",
      "HotelToolsAgent": "Zvi",
      "HotelToolsPassword": "<password>"
    }
  }
}
```

## Prerequisites
- `agent-browser` installed globally: `npm install -g agent-browser && agent-browser install`
- Chrome available (installed automatically by agent-browser)
- Network access to Innstant API and Hotel.Tools portal

## Reconciliation Logic

### Step 1: Load Medici Data
- Query `MED_Book` for active bookings in lookback window
- Query `Med_Reservation` for Zenith reservations
- Query `SalesOfficeOrders` for order pipeline status

### Step 2: Verify Against Innstant API
- For each booking with `Source=1` (Innstant), call `booking-details/{contentBookingId}`
- Compare: existence, price (>5% threshold), status, dates

### Step 3: Cross-reference Internal Tables
- Match sold bookings (`IsSold=true`) to Zenith reservations by HotelCode + dates
- Detect orphaned reservations (in Zenith but not in Medici)

### Step 4: Browser Verification (Optional)
- Login to Innstant B2B portal, navigate to Bookings tab
- Login to Hotel.Tools, navigate to Reservations tab
- Capture snapshots and screenshots for audit trail

### Step 5: Alert
- Send notification via all configured channels (Email, Slack, Teams, WhatsApp)
- Badge count shown on dashboard tab

## Output: ReconciliationReport
```json
{
  "startTime": "2026-03-15T10:00:00Z",
  "endTime": "2026-03-15T10:00:12Z",
  "durationMs": 12340,
  "lookbackHours": 24,
  "mediciBookingsCount": 45,
  "mediciReservationsCount": 38,
  "salesOrdersCount": 120,
  "innstantVerifiedCount": 42,
  "innstantMissingCount": 3,
  "browserChecked": true,
  "totalMismatches": 5,
  "criticalMismatches": 2,
  "mismatches": [
    {
      "type": "MissingInInnstant",
      "severity": "Critical",
      "contentBookingId": 12345,
      "description": "Booking exists in Medici but not found in Innstant"
    }
  ]
}
```

## Dashboard
A dedicated "Reconciliation" tab in the MediciMonitor dashboard shows:
- Summary cards (booking counts per system, mismatches, browser status)
- Color-coded status bar (green/yellow/red)
- Detailed mismatches table with severity, type, booking ID, hotel, and descriptions
- History of past reconciliation runs
