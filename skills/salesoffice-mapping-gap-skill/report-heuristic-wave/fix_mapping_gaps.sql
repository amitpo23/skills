-- =============================================================
-- SalesOffice Mapping Gap Fix - Auto-Generated
-- Generated: 2026-03-18T12:43:31.183620+00:00
-- Type A gaps only (BoardId already exists for hotel)
-- =============================================================

BEGIN TRANSACTION;

-- Crystal Beach Suites Hotel | RO/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64390, 1, 1, '12069', 'Stnd');
END

-- Crystal Beach Suites Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64390, 1, 2, '12069', 'SPR');
END

-- Crystal Beach Suites Hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64390 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64390, 1, 4, '12069', 'DLX');
END

-- FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117491, 1, 2, '12059', 'SPR');
END

-- FAIRWIND HOTEL & SUITES SOUTH BEACH | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=117491 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (117491, 1, 12, '12059', 'Suite');
END

-- Notebook Miami Beach | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237547, 1, 2, '12070', 'SPR');
END

-- Notebook Miami Beach | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237547, 1, 4, '12070', 'DLX');
END

-- Notebook Miami Beach | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=237547 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (237547, 1, 12, '12070', 'Suite');
END

-- Eurostars Langford Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 1, 2, '12067', 'SPR');
END

-- Eurostars Langford Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 2, 2, '13159', 'SPR');
END

-- Eurostars Langford Hotel | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 2, 4, '13159', 'DLX');
END

-- Eurostars Langford Hotel | BB/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=333502 AND BoardId=2 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (333502, 2, 12, '13159', 'Suite');
END

-- SLS LUX Brickell | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852120, 1, 2, '12035', 'SPR');
END

-- SLS LUX Brickell | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852120, 2, 2, '13168', 'SPR');
END

-- SLS LUX Brickell | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=852120 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (852120, 2, 4, '13168', 'DLX');
END

-- Verify results
SELECT * FROM Med_Hotels_ratebycat WHERE HotelId IN (64390, 117491, 237547, 333502, 852120) ORDER BY HotelId, BoardId, CategoryId;

COMMIT TRANSACTION;