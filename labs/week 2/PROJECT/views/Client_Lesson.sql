CREATE VIEW Client_Lesson AS
SELECT 
    Client.clientID,
    Client.fName,
    Client.lName,
    Client.dob,
    Client.phone,
    Client.city,
    Client.zipCode,
    Lesson.lessonID,
    Lesson.lessonDate,
    Lesson.topicCovered,
    Lesson.staffID,
    Lesson.mileage,
    Lesson.instructorComments,
    Lesson.lessonStatus,
    Lesson.startTime
FROM 
    Client
INNER JOIN 
    Lesson 
    ON Client.clientID = Lesson.clientID;
GO