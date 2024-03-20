CREATE VIEW Lesson_Info AS
SELECT 
    cl.*,
    Staff.fName AS StaffFirstName,
    Staff.lName AS StaffLastName

FROM 
    Client_Lesson cl
INNER JOIN 
    Staff 
    ON cl.staffID = Staff.staffID;
    GO

    SELECT * FROM Lesson_Info
