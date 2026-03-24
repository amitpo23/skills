-- Load Zenith reservations for cross-referencing with Medici bookings
-- @Hours: lookback period in hours (default 24)

SELECT
    Id,
    HotelCode,
    UniqueId,
    ResStatus,        -- 'New', 'Commit', 'Cancel', 'Modify'
    Datefrom,
    Dateto,
    AmountAfterTax,
    CurrencyCode,
    IsApproved,
    DateInsert
FROM Med_Reservation
WHERE DateInsert >= DATEADD(HOUR, -@Hours, GETDATE())
ORDER BY DateInsert DESC;
