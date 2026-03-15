-- Find sold bookings without matching Zenith reservations
-- These are potential mismatches between Medici and Zenith

SELECT
    b.PreBookId,
    b.contentBookingID,
    b.HotelId,
    b.Price,
    b.StartDate,
    b.EndDate,
    b.DateInsert AS BookingDate,
    'MissingReservation' AS MismatchType
FROM MED_Book b
LEFT JOIN Med_Reservation r
    ON CAST(b.HotelId AS NVARCHAR(20)) = r.HotelCode
    AND CAST(b.StartDate AS DATE) = CAST(r.Datefrom AS DATE)
    AND CAST(b.EndDate AS DATE) = CAST(r.Dateto AS DATE)
WHERE b.IsActive = 1
  AND b.IsSold = 1
  AND b.StartDate > GETDATE()  -- Only future bookings
  AND r.Id IS NULL
  AND b.DateInsert >= DATEADD(HOUR, -24, GETDATE())
ORDER BY b.DateInsert DESC;
