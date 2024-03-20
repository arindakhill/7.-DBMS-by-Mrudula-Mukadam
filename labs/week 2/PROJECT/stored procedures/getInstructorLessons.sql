CREATE OR ALTER PROCEDURE GetInstructorLessons
    @InstructorID INT
AS
BEGIN
    SELECT *
    FROM Lesson
    WHERE staffID = @InstructorID;
END;
EXEC GetInstructorLessons @InstructorID = 22