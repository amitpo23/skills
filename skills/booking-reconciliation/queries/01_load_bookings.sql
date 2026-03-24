-- Load active bookings from Medici DB for reconciliation
-- @Hours: lookback period in hours (default 24)

SELECT
    PreBookId,
    contentBookingID,
    HotelId,
    Source,           -- 1=Innstant, 2=GoGlobal
    Price,
    LastPrice,
    StartDate,
    EndDate,
    IsSold,
    IsActive,
    CancellationTo,
    DateInsert
FROM MED_Book
WHERE IsActive = 1
  AND DateInsert >= DATEADD(HOUR, -@Hours, GETDATE())
ORDER BY DateInsert DESC;
