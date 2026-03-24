-- =============================================================
-- SalesOffice Mapping Gap Fix - Auto-Generated
-- Generated: 2026-03-18T09:09:44.219875+00:00
-- Type A gaps only (BoardId already exists for hotel)
-- =============================================================

BEGIN TRANSACTION;

-- Embassy Suites by Hilton Miami International Airport | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 1, 2, '12045', 'SPR');
END

-- Embassy Suites by Hilton Miami International Airport | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 1, 4, '12045', 'DLX');
END

-- Embassy Suites by Hilton Miami International Airport | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 2, 1, '13170', 'Stnd');
END

-- Embassy Suites by Hilton Miami International Airport | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 2, 2, '13170', 'SPR');
END

-- Embassy Suites by Hilton Miami International Airport | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 2, 4, '13170', 'DLX');
END

-- Hilton Miami Downtown | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 1, 2, '12048', 'SPR');
END

-- Hilton Miami Downtown | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 1, 4, '12048', 'DLX');
END

-- Hilton Miami Downtown | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 2, 2, '13173', 'SPR');
END

-- Hilton Miami Downtown | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 2, 4, '13173', 'DLX');
END

-- Savoy Hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64309, 1, 2, '12071', 'SPR');
END

-- Savoy Hotel | BB/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=64309 AND BoardId=2 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (64309, 2, 2, '13155', 'SPR');
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

-- citizenM Miami Brickell hotel | RO/superior
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=2)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854881, 1, 2, '12043', 'SPR');
END

-- citizenM Miami Brickell hotel | RO/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854881, 1, 4, '12043', 'DLX');
END

-- citizenM Miami Brickell hotel | RO/suite
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=854881 AND BoardId=1 AND CategoryId=12)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (854881, 1, 12, '12043', 'Suite');
END

-- Verify results
SELECT * FROM Med_Hotels_ratebycat WHERE HotelId IN (20702, 24982, 64309, 852120, 854881) ORDER BY HotelId, BoardId, CategoryId;

COMMIT TRANSACTION;