CREATE OR ALTER FUNCTION GetTotalLessons(@ClientID INT)
RETURNS INT
AS
BEGIN
    DECLARE @LessonCount INT;

    SELECT @LessonCount = COUNT(*)
    FROM Lesson
    WHERE clientID = @ClientID AND lessonDate <= GETDATE();

    RETURN @LessonCount;
END;
GO

SELECT dbo.GetTotalLessons( 2) AS 'TOTAL LESSONS'