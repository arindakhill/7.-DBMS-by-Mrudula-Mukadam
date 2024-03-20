CREATE VIEW UpcomingDrivingTests AS
SELECT 
    testID, 
    clientID, 
    testDate, 
    testTime
FROM 
    DrivingTest
WHERE 
    testDate BETWEEN GETDATE() AND DATEADD(DAY, 30, GETDATE());

    GO
    SELECT * FROM UpcomingDrivingTests;
