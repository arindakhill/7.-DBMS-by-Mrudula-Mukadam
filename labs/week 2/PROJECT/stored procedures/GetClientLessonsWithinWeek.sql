CREATE PROCEDURE GetClientLessonsWithinWeek
    @ClientID INT,
    @StartDate DATE
AS
BEGIN
    SELECT *
    FROM Lesson
    WHERE clientID = @ClientID
    AND lessonDate BETWEEN @StartDate AND DATEADD(day, 6, @StartDate);
END;
