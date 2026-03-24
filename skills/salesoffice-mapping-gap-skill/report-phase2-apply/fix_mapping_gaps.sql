-- =============================================================
-- SalesOffice Mapping Gap Fix - Auto-Generated
-- Generated: 2026-03-18T12:07:27.762956+00:00
-- Type A gaps only (BoardId already exists for hotel)
-- =============================================================

BEGIN TRANSACTION;

-- Embassy Suites by Hilton Miami International Airport | BB/standard
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=20702 AND BoardId=2 AND CategoryId=1)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (20702, 2, 1, '13170', 'Stnd');
END

-- Hilton Miami Downtown | BB/deluxe
IF NOT EXISTS (SELECT 1 FROM Med_Hotels_ratebycat WHERE HotelId=24982 AND BoardId=2 AND CategoryId=4)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (24982, 2, 4, '13173', 'DLX');
END

-- Verify results
SELECT * FROM Med_Hotels_ratebycat WHERE HotelId IN (20702, 24982) ORDER BY HotelId, BoardId, CategoryId;

COMMIT TRANSACTION;