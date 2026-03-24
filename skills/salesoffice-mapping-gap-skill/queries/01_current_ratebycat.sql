-- 01: Current state of Med_Hotels_ratebycat with resolved names
-- Returns all existing mappings with human-readable Board/Category names

SELECT
    rbcat.Id,
    rbcat.HotelId,
    h.[Name] AS HotelName,
    h.Innstant_ZenithId AS VenueId,
    rbcat.BoardId,
    brd.BoardCode,
    brd.[Description] AS BoardDescription,
    rbcat.CategoryId,
    cat.[Name] AS CategoryName,
    cat.PMS_Code AS PmsCode,
    rbcat.RatePlanCode,
    rbcat.InvTypeCode
FROM [Med_Hotels_ratebycat] rbcat
LEFT JOIN MED_Board brd ON brd.BoardId = rbcat.BoardId
LEFT JOIN MED_RoomCategory cat ON cat.CategoryId = rbcat.CategoryId
LEFT JOIN Med_Hotels h ON h.HotelId = rbcat.HotelId
ORDER BY rbcat.HotelId, rbcat.BoardId, rbcat.CategoryId;
