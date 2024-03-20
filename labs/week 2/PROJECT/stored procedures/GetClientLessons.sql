CREATE OR ALTER PROCEDURE GetClientLessons
    @ClientID INT
AS
BEGIN
    SELECT *
    FROM Lesson
    WHERE clientID = @ClientID;
END;

EXEC GetClientLessons @ClientID = 1;

