# Active Rooms Push Price Skill

## Purpose
Allows Price Predictor to update the selling price (PushPrice) of purchased rooms in Active Rooms and push the new price to Zenith/Noovy.

## How It Works

```
Price Predictor → identifies optimal selling price
    │
    ├── push_price.py --prebook-id 10832 --push-price 250.00 --live
    │
    ├── 1. Validates: room active, unsold, price > buy price
    ├── 2. Executes: EXEC Med_updateNewPrice @PreBookId, @pushprice
    │      → Updates PushPrice in MED_Opportunities
    │      → Adds to MED_HotelsToPush queue
    ├── 3. Pushes: SOAP PushRates to Zenith with new price
    └── 4. Audit: JSON log + rollback SQL
```

## Commands

```bash
# List all active rooms
python push_price.py --connection-string "..." --list

# Check mode (dry-run)
python push_price.py --connection-string "..." --prebook-id 10832 --push-price 250.00 --check

# Update single room
python push_price.py --connection-string "..." --prebook-id 10832 --push-price 250.00 --live

# Bulk from CSV
python push_price.py --connection-string "..." --csv prices.csv --live
```

## CSV Format

```csv
prebook_id,push_price
10832,250.00
10831,280.00
10830,275.00
```

## Guardrails

| Guard | Value | Description |
|-------|-------|-------------|
| Authorized systems | PricePredictor, admin, manual | Only listed systems |
| Price > BuyPrice | Always | Never sell at a loss |
| Price range | $1 - $10,000 | Hard limits |
| Max margin | 100% above buy | Prevents absurd prices |
| Max per run | 200 | Volume limit |
| Unsold only | IsSold = 0 | Can't change price of sold rooms |
| Active only | IsActive = 1 | Can't change inactive rooms |
| Audit | Always | JSON log + rollback SQL |
| Zenith delay | 200ms | Rate limiting |

## Stored Procedure: Med_updateNewPrice

The skill uses the existing stored procedure which:
1. Checks `MED_Book.IsActive=1 AND IsSold=0`
2. Checks `price < @pushprice` (won't sell below cost)
3. Updates `PushPrice` in `MED_Opportunities`
4. Adds entry to `MED_HotelsToPush` for PushRoomControl
5. Returns success/error message

## What Happens After

```
Med_updateNewPrice executed
    → MED_Opportunities.PushPrice updated
    → MED_HotelsToPush row created (IsActive=1)
    → PushRoomControl picks up
    → Pushes PushRates to Zenith (new price visible on hotel.tools)
    → PushAvailability to Zenith (room open)
    → MED_HotelsToPush marked DatePush + IsActive=0
```

## DB Permissions Required

```sql
-- prediction_reader needs EXECUTE on the stored procedure:
GRANT EXECUTE ON [dbo].[Med_updateNewPrice] TO [prediction_reader];

-- Or direct table access (already granted):
-- INSERT on MED_HotelsToPush (done by SP)
-- UPDATE on MED_Opportunities (done by SP)
```

## Files

| File | Purpose |
|------|---------|
| `push_price.py` | Main skill script |
| `SKILL.md` | This file |
| DB: `Med_updateNewPrice` | Stored procedure (existing) |
| DB: `MED_Book` | Source: active rooms |
| DB: `MED_Opportunities` | Updated: PushPrice |
| DB: `MED_HotelsToPush` | Queue: push to Zenith |
