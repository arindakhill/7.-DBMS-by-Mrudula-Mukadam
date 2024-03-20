CREATE OR ALTER FUNCTION GetLessonsBeforeDate(@ClientID INT, @BeforeDate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @LessonCount INT;

    SELECT @LessonCount = COUNT(*)
    FROM Lesson
    WHERE clientID = @ClientID AND lessonDate < @BeforeDate;

    RETURN @LessonCount;
END;
GO

SELECT dbo.GetLessonsBeforeDate( 1, '2023-4-1') AS 'lessons before given date'
