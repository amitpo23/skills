# SalesOffice Mapping Gap Analyzer Skill

## Purpose
Analyze `Med_Hotels_ratebycat` coverage, identify missing Board+Category combinations
that cause rooms to be silently dropped by the `Remap()` INNER JOIN in `SalesOfficeService`,
and generate SQL to close the gaps.

## The Problem This Solves
The WebJob's `Remap()` method (SalesOfficeService.cs:118-143) performs an INNER JOIN
between API results and `Med_Hotels_ratebycat`. Any room combination (HotelId + Board + Category)
without a matching ratebycat row is **silently dropped** - no log, no alert, no storage.

This skill detects those gaps and generates fixes.

## Gap Types

### Type A - Auto-Fixable
The hotel already has ratebycat rows for this BoardId (e.g., Board 1 = RO).
The RatePlanCode is known (same for all categories under the same Board).
The InvTypeCode is derived from CategoryId.

**Example:** Hotel 6805 has RO/Standard, RO/Deluxe, RO/Suite but NOT RO/Superior.
→ Auto-fix: INSERT with RPC=12044 (from existing RO rows), ITC=SPR (from Category 2).

### Type B - Manual (Needs Zenith)
The hotel has NO ratebycat rows for this BoardId.
A new RatePlanCode must be created in Zenith (hotel.tools) first.

**Example:** Hotel 237547 has only RO mappings. BB results from API are dropped.
→ Manual: Create BB RatePlan in Zenith, then add ratebycat rows.

## How to Run

### Option A: Direct Database Connection
```powershell
# Dry run - analyze only
python analyzer.py --connection-string "Driver={ODBC Driver 18 for SQL Server};Server=medici-sql-server.database.windows.net;Database=medici-db;Encrypt=yes;TrustServerCertificate=no;Authentication=ActiveDirectoryDefault" --out report

# Analyze specific hotel
python analyzer.py --connection-string "..." --hotel-id 6805 --out report

# Apply fixes (Type A only)
python analyzer.py --connection-string "..." --apply --out report
```

### Option B: CSV Mode (Offline)
```powershell
# Export data first using queries/01 and queries/03
# Then run analyzer
python analyzer.py --input-ratebycat-csv ratebycat_export.csv --input-details-csv details_export.csv --out report
```

### Option C: Azure CLI Auth
```powershell
# Login first
az login
az account set --subscription "your-subscription"

# Use managed identity connection
python analyzer.py --connection-string "Driver={ODBC Driver 18 for SQL Server};Server=medici-sql-server.database.windows.net;Database=medici-db;Authentication=ActiveDirectoryInteractive" --out report
```

## Output Files

| File | Content |
|------|---------|
| `report/summary.json` | Full analysis: hotels, gaps, counts, types |
| `report/gaps.csv` | All gaps in tabular format |
| `report/fix_mapping_gaps.sql` | INSERT statements for Type A gaps (with NOT EXISTS check) |
| `report/rollback_mapping_gaps.sql` | DELETE statements to undo all INSERTs |
| `report/apply_results.json` | Results of --apply execution (if used) |

## Reference Data (Hardcoded from Production)

### Board Codes
| BoardId | Code | Description |
|---------|------|-------------|
| 1 | RO | Room Only |
| 2 | BB | Bed & Breakfast |
| 3 | HB | Half Board |
| 4 | FB | Full Board |
| 5 | AI | All Inclusive |

### InvTypeCode Mapping
| CategoryId | Name | InvTypeCode |
|------------|------|-------------|
| 1 | Standard | Stnd |
| 2 | Superior | SPR |
| 4 | Deluxe | DLX |
| 12 | Suite | Suite |

### RatePlanCode Pattern
`RatePlanCode = f(HotelId, BoardId)` - same RPC for ALL categories under the same Board.
Verified from 802 rows across 235 hotels in production.

## Safety

- Dry-run by default (no --apply = no database changes)
- NOT EXISTS check prevents duplicate inserts
- Rollback SQL generated for every fix
- Type B gaps are NEVER auto-fixed (flagged for manual action)
- Transaction wrapping in generated SQL

## Dependencies
- Python 3.10+
- pandas >= 2.0
- pyodbc >= 5.0 (for database mode)
