-- 06: Analyze MappingMisses table for gap detection
-- This query aggregates unmapped combinations captured by the WebJob
-- and identifies the most impactful gaps to fix

-- Top unmapped combinations by frequency (last 48 hours)
SELECT
    mm.HotelId,
    h.[Name] AS HotelName,
    h.Innstant_ZenithId AS VenueId,
    mm.RoomCategory,
    mm.RoomBoard,
    COUNT(*) AS MissCount48h,
    MIN(mm.RoomPrice) AS MinPrice,
    AVG(mm.RoomPrice) AS AvgPrice,
    MAX(mm.RoomPrice) AS MaxPrice,
    MIN(mm.SeenAt) AS FirstSeen,
    MAX(mm.SeenAt) AS LastSeen,
    mm.Status
FROM [SalesOffice.MappingMisses] mm
LEFT JOIN Med_Hotels h ON h.HotelId = mm.HotelId
WHERE mm.SeenAt >= DATEADD(HOUR, -48, GETDATE())
  AND mm.Status = 'new'
GROUP BY mm.HotelId, h.[Name], h.Innstant_ZenithId, mm.RoomCategory, mm.RoomBoard, mm.Status
HAVING COUNT(*) >= 3  -- only combinations seen at least 3 times
ORDER BY COUNT(*) DESC, mm.HotelId;

-- Summary: hotels ranked by total misses
SELECT
    mm.HotelId,
    h.[Name] AS HotelName,
    COUNT(*) AS TotalMisses48h,
    COUNT(DISTINCT mm.RoomCategory + '/' + mm.RoomBoard) AS UniqueCombos,
    SUM(mm.RoomPrice) AS TotalLostRevenuePotential
FROM [SalesOffice.MappingMisses] mm
LEFT JOIN Med_Hotels h ON h.HotelId = mm.HotelId
WHERE mm.SeenAt >= DATEADD(HOUR, -48, GETDATE())
  AND mm.Status = 'new'
GROUP BY mm.HotelId, h.[Name]
ORDER BY COUNT(*) DESC;
