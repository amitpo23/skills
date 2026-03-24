-- =============================================================
-- ROLLBACK - SalesOffice Mapping Gap Fix
-- Generated: 2026-03-18T12:43:31.185509+00:00
-- WARNING: Only run this to undo the auto-generated INSERTs
-- =============================================================

BEGIN TRANSACTION;

-- Rollback: Crystal Beach Suites Hotel | RO/standard
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=1 AND RatePlanCode='12069' AND InvTypeCode='Stnd';

-- Rollback: Crystal Beach Suites Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12069' AND InvTypeCode='SPR';

-- Rollback: Crystal Beach Suites Hotel | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12069' AND InvTypeCode='DLX';

-- Rollback: FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12059' AND InvTypeCode='SPR';

-- Rollback: FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12059' AND InvTypeCode='Suite';

-- Rollback: Notebook Miami Beach | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12070' AND InvTypeCode='SPR';

-- Rollback: Notebook Miami Beach | RO/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=4 AND RatePlanCode='12070' AND InvTypeCode='DLX';

-- Rollback: Notebook Miami Beach | RO/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=12 AND RatePlanCode='12070' AND InvTypeCode='Suite';

-- Rollback: Eurostars Langford Hotel | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12067' AND InvTypeCode='SPR';

-- Rollback: Eurostars Langford Hotel | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13159' AND InvTypeCode='SPR';

-- Rollback: Eurostars Langford Hotel | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13159' AND InvTypeCode='DLX';

-- Rollback: Eurostars Langford Hotel | BB/suite
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=12 AND RatePlanCode='13159' AND InvTypeCode='Suite';

-- Rollback: SLS LUX Brickell | RO/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=1 AND CategoryId=2 AND RatePlanCode='12035' AND InvTypeCode='SPR';

-- Rollback: SLS LUX Brickell | BB/superior
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=2 AND RatePlanCode='13168' AND InvTypeCode='SPR';

-- Rollback: SLS LUX Brickell | BB/deluxe
DELETE FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=4 AND RatePlanCode='13168' AND InvTypeCode='DLX';

COMMIT TRANSACTION;