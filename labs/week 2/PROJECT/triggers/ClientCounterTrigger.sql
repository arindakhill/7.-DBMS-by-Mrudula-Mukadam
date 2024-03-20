ALTER TABLE Staff
ADD totalClients INT DEFAULT 0;
GO
UPDATE Staff
SET totalClients = (SELECT COUNT(DISTINCT clientID) FROM Lesson WHERE staffID = Staff.staffID);
GO
--trigger for incrementing

CREATE TRIGGER trg_IncrementTotalClients
ON Lesson
AFTER INSERT
AS
BEGIN
    UPDATE Staff
    SET totalClients = totalClients + 1
    WHERE staffID IN (SELECT DISTINCT staffID FROM inserted);
END;
GO

--trigger for decrementing
CREATE TRIGGER trg_DecrementTotalClients
ON Lesson
AFTER DELETE
AS
BEGIN
    UPDATE Staff
    SET totalClients = totalClients - 1
    WHERE staffID IN (SELECT DISTINCT staffID FROM deleted);
END;
GO
