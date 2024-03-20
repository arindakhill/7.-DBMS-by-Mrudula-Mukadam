CREATE OR ALTER PROCEDURE GetAvailableInstructors
    @SpecificDate DATE
AS
BEGIN
    SELECT 
        staffID, 
        fName, 
        lName
    FROM 
        Staff
    WHERE 
        (position = 'Senior Instructor' OR position = 'Instructor')
        AND staffID NOT IN (
            SELECT staffID 
            FROM Lesson 
            WHERE lessonDate = @SpecificDate
        );
END;

EXEC GetAvailableInstructors @SpecificDate='2023-3-1'
