-- 04: Reference tables for Board and Category
-- Used to resolve IDs to names and PMS codes

-- Boards
SELECT BoardId, BoardCode, [Description]
FROM MED_Board
ORDER BY BoardId;

-- Categories
SELECT CategoryId, [Name], [Description], PMS_Code
FROM MED_RoomCategory
ORDER BY CategoryId;
