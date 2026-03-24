-- =============================================================
-- ROLLBACK - SalesOffice Mapping Gap Fix
-- Generated: 2026-03-18T09:09:44.221721+00:00
-- WARNING: Only run this to undo the auto-generated INSERTs
-- =============================================================

BEGIN TRANSACTION;

-- Rollback: Embassy Suites by Hilton Miami International Airport | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12045' AND InvTypeCode='SPR';

-- Rollback: Embassy Suites by Hilton Miami International Airport | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12045' AND InvTypeCode='DLX';

-- Rollback: Embassy Suites by Hilton Miami International Airport | BB/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=1 AND RatePlanCode='13170' AND InvTypeCode='Stnd';

-- Rollback: Embassy Suites by Hilton Miami International Airport | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13170' AND InvTypeCode='SPR';

-- Rollback: Embassy Suites by Hilton Miami International Airport | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13170' AND InvTypeCode='DLX';

-- Rollback: Hilton Miami Downtown | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12048' AND InvTypeCode='SPR';

-- Rollback: Hilton Miami Downtown | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12048' AND InvTypeCode='DLX';

-- Rollback: Hilton Miami Downtown | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13173' AND InvTypeCode='SPR';

-- Rollback: Hilton Miami Downtown | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13173' AND InvTypeCode='DLX';

-- Rollback: Savoy Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12071' AND InvTypeCode='SPR';

-- Rollback: Savoy Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13155' AND InvTypeCode='SPR';

-- Rollback: SLS LUX Brickell | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: SLS LUX Brickell | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: SLS LUX Brickell | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

-- Rollback: citizenM Miami Brickell hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12043' AND InvTypeCode='SPR';

-- Rollback: citizenM Miami Brickell hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12043' AND InvTypeCode='DLX';

-- Rollback: citizenM Miami Brickell hotel | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12043' AND InvTypeCode='Suite';

COMMIT TRANSACTION;