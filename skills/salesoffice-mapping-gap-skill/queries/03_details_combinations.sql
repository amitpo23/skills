-- 03: Distinct Board+Category combinations that ARE mapped (exist in Details)
-- Shows what the system successfully maps today

SELECT DISTINCT
    d.HotelId,
    h.[Name] AS HotelName,
    d.RoomCategory,
    d.RoomBoard,
    COUNT(*) AS DetailCount,
    MIN(d.RoomPrice) AS MinPrice,
    MAX(d.RoomPrice) AS MaxPrice,
    MAX(d.DateCreated) AS LastSeen
FROM [SalesOffice.Details] d
LEFT JOIN Med_Hotels h ON h.HotelId = d.HotelId
WHERE d.IsDeleted = 0
GROUP BY d.HotelId, h.[Name], d.RoomCategory, d.RoomBoard
ORDER BY d.HotelId, d.RoomCategory, d.RoomBoard;
