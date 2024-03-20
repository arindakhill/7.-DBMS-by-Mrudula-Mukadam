CREATE FUNCTION GetLessonDetails(@ClientID INT)
RETURNS TABLE
AS
RETURN (
    SELECT 
        l.lessonID, 
        l.lessonDate, 
        l.topicCovered, 
        l.mileage, 
        l.instructorComments, 
        l.lessonStatus,
        c.fName,
        c.lName
    FROM 
        Lesson l
    INNER JOIN 
        Client c ON l.clientID = c.clientID
    WHERE 
        c.clientID = @ClientID
);
