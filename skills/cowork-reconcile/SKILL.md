# COWORK Reconcile Skill

## Purpose
Compares COWORK Playwright scan results with SalesOffice.Details to find gaps, price differences, and mapping issues.

## How It Works

```
COWORK (Playwright) → scans hotels via UI → saves JSON to /cowork-scans/
    ↓
Claude runs cowork_reconcile.py every few hours
    ↓
Reads JSON files → compares with DB → reports findings
    ↓
Moves processed files to /cowork-scans/processed/
```

## Commands

```bash
# Check new scans (read-only)
python cowork_reconcile.py --connection-string "..." --check

# Check and move processed files
python cowork_reconcile.py --connection-string "..." --process

# Full report
python cowork_reconcile.py --connection-string "..." --report
```

## What It Finds

| Finding | Meaning |
|---------|---------|
| `COWORK_ONLY` | COWORK found results but DB has 0 Details (WebJob missed?) |
| `MISSING_IN_DB` | Combo exists in COWORK scan but not in DB (mapping gap?) |
| `PRICE_DIFF` | Same combo, different price (scan timing difference) |
| `DB_ONLY` | Combo in DB but COWORK didn't find it (API inconsistency?) |

## Directory Structure

```
cowork-scans/
├── README.md                              ← Format spec for COWORK
├── scan_6805_2026-08-15_20260325.json     ← COWORK writes here
├── bulk_scan_20260325_1430.json           ← Bulk scans
├── reconcile_report_20260325_1500.json    ← Claude's report
└── processed/                             ← Processed files moved here
    └── scan_6805_2026-08-15_20260325.json
```

## JSON Format (for COWORK)

See `/cowork-scans/README.md` for full spec.
