-- 05: Template for generating INSERT statements for Type A gaps
-- Parameters: @HotelId, @BoardId, @CategoryId, @RatePlanCode, @InvTypeCode

-- Check if row already exists before inserting
IF NOT EXISTS (
    SELECT 1 FROM Med_Hotels_ratebycat
    WHERE HotelId = @HotelId
      AND BoardId = @BoardId
      AND CategoryId = @CategoryId
)
BEGIN
    INSERT INTO Med_Hotels_ratebycat (HotelId, BoardId, CategoryId, RatePlanCode, InvTypeCode)
    VALUES (@HotelId, @BoardId, @CategoryId, @RatePlanCode, @InvTypeCode);
END
