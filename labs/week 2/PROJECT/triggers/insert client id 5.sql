INSERT INTO Client (clientID, fName, lName, dob, phone, city, zipCode, tpStaffID) VALUES 
(5, 'Frank', 'Reynolds', '1999-05-23', '555-3003', 'Glasgow', 'G1 9XX', 19);


INSERT INTO Registration (formID, registrationDate, clientID, officeID) VALUES 
(5, '2023-02-20', 5, 1);

INSERT INTO InterviewDetails (clientID, interviewDate, interviewTime, comments, staffID) VALUES 
(5, '2023-02-13', '09:45:00', 'Seemed nervous', 19);

INSERT INTO Lesson (lessonID, lessonDate, startTime, topicCovered, clientID, staffID, mileage, instructorComments, lessonStatus) VALUES 
(5, '2023-02-20', '10:30:00', 'Night driving', 5, 2, 10, 'Very cautious', 'Completed');


INSERT INTO DrivingTest (testID, writtenScore, drivingScore, testDate, testTime, clientID, drivingStatus) VALUES 
(4, 65, 60, '2023-03-08', '13:00:00', 5, 'Failed');

INSERT INTO TestReview (testID, instructorComments) VALUES 
(4, 'Needs to check their driving speed.');