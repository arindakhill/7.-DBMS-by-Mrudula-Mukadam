CREATE OR ALTER PROCEDURE GetInstructorLessonsWithinWeek
    @InstructorID INT,
    @StartDate DATE
AS
BEGIN
    SELECT *
    FROM Lesson
    WHERE staffID = @InstructorID
    AND lessonDate BETWEEN @StartDate AND DATEADD(day, 7, @StartDate);
END;

EXEC    GetInstructorLessonsWithinWeek @InstructorID = 22, @StartDate = '2023-4-1'

