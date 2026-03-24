-- 02: Extract mapping ratio from WebJobStatus for recent orders
-- Parses the free-text WebJobStatus field to extract numeric values

SELECT
    o.Id AS OrderId,
    o.DestinationId,
    o.DateFrom,
    o.DateTo,
    o.IsActive,
    o.WebJobStatus,
    -- Extract "Innstant Api Rooms: X"
    CASE
        WHEN o.WebJobStatus LIKE '%Innstant Api Rooms:%'
        THEN TRY_CAST(
            LTRIM(RTRIM(
                SUBSTRING(
                    o.WebJobStatus,
                    CHARINDEX('Innstant Api Rooms:', o.WebJobStatus) + LEN('Innstant Api Rooms:'),
                    CHARINDEX(';', o.WebJobStatus + ';',
                        CHARINDEX('Innstant Api Rooms:', o.WebJobStatus) + LEN('Innstant Api Rooms:'))
                    - (CHARINDEX('Innstant Api Rooms:', o.WebJobStatus) + LEN('Innstant Api Rooms:'))
                )
            )) AS INT)
        ELSE NULL
    END AS ApiRooms,
    -- Extract "Rooms With Mapping: Y"
    CASE
        WHEN o.WebJobStatus LIKE '%Rooms With Mapping:%'
        THEN TRY_CAST(
            LTRIM(RTRIM(
                SUBSTRING(
                    o.WebJobStatus,
                    CHARINDEX('Rooms With Mapping:', o.WebJobStatus) + LEN('Rooms With Mapping:'),
                    LEN(o.WebJobStatus)
                )
            )) AS INT)
        ELSE NULL
    END AS MappedRooms
FROM [SalesOffice.Orders] o
WHERE o.WebJobStatus LIKE '%Innstant Api Rooms:%'
  AND o.IsActive = 1
ORDER BY o.DateFrom DESC;
