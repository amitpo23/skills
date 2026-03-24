-- =============================================================
-- ROLLBACK - SalesOffice Mapping Gap Fix
-- Generated: 2026-03-18T12:07:27.765401+00:00
-- WARNING: Only run this to undo the auto-generated INSERTs
-- =============================================================

BEGIN TRANSACTION;

-- Rollback: Embassy Suites by Hilton Miami International Airport | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='13170' AND InvTypeCode='Stnd';

-- Rollback: Hilton Miami Downtown | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13173' AND InvTypeCode='DLX';

COMMIT TRANSACTION;