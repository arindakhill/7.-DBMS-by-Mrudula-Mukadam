CREATE VIEW UpcomingInstructorBirthdays AS
SELECT 
    staffID, 
    fName, 
    lName, 
    dob
FROM 
    Staff
WHERE 
    MONTH(dob) = MONTH(GETDATE()) AND DAY(dob) >= DAY(GETDATE())
    OR MONTH(dob) = MONTH(DATEADD(MONTH, 1, GETDATE())) AND DAY(dob) <= DAY(GETDATE());
