--STAFF DATA
use EasyDrive

--OFFICE DATA
INSERT INTO Office (officeID, officeName, city, zipCode, managerID, phone) VALUES 
(1, 'Glasgow HQ', 'Glasgow', 'G1 1XX', NULL, '555-1001'),
(2, 'Edinburgh Branch', 'Edinburgh', 'E1 3XX', NULL, '555-1002'),
(3, 'Aberdeen Branch', 'Aberdeen', 'AB10 1XG', NULL, '555-3001'),
(4, 'Inverness Branch', 'Inverness', 'IV1 1LY', NULL, '555-4001'),
(5, 'Dundee Branch', 'Dundee', 'DD1 4HN', NULL, '555-5001');

INSERT INTO Staff (staffID, SSN, fName, lName, position, gender, dob, city, zipCode, phone, officeID) VALUES 
(1, '555-55-5555', 'John', 'Doe', 'Senior Instructor', 'M', '1970-01-01', 'Glasgow', 'G1 1XX', '555-0001', 1),
(2, '666-66-6666', 'Jane', 'Smith', 'Instructor', 'F', '1980-02-02', 'Glasgow', 'G1 2XX', '555-0002', 1),
(3, '777-77-7777', 'Jim', 'Beam', 'Instructor', 'M', '1990-03-03', 'Edinburgh', 'E1 3XX', '555-0003', 2),
(4, '888-88-8888', 'Julia', 'Roberts', 'Administrator', 'F', '1975-04-04', 'Glasgow', 'G1 4XX', '555-0004', 1),
(5, '111-22-3333', 'Sarah', 'Conner', 'Senior Instructor', 'F', '1982-05-21', 'Aberdeen', 'AB10 1XG', '555-5005', 3),
(6, '222-33-4444', 'Gary', 'Oak', 'Instructor', 'M', '1991-08-19', 'Aberdeen', 'AB10 1XG', '555-6006', 3),
(7, '333-44-5555', 'Diana', 'Prince', 'Administrator', 'F', '1985-11-30', 'Aberdeen', 'AB10 1XG', '555-7007', 3),

(8, '444-55-6666', 'Bruce', 'Wayne', 'Senior Instructor', 'M', '1979-04-17', 'Inverness', 'IV1 1LY', '555-8008', 4),
(9, '555-66-7777', 'Clark', 'Kent', 'Instructor', 'M', '1988-06-26', 'Inverness', 'IV1 1LY', '555-9009', 4),
(10, '666-77-8888', 'Lois', 'Lane', 'Administrator', 'F', '1990-02-15', 'Inverness', 'IV1 1LY', '555-1010', 4),

(11, '777-88-9999', 'Peter', 'Parker', 'Senior Instructor', 'M', '1977-12-27', 'Dundee', 'DD1 4HN', '555-1111', 5),
(12, '888-99-0000', 'Mary', 'Jane', 'Instructor', 'F', '1986-05-17', 'Dundee', 'DD1 4HN', '555-1212', 5),
(13, '999-00-1111', 'Harry', 'Osborn', 'Administrator', 'M', '1984-03-13', 'Dundee', 'DD1 4HN', '555-1313', 5),

--more senior instructors
(14,'111-11-1111', 'Tony', 'Stark', 'Senior Instructor', 'M', '1970-05-29', 'Glasgow', 'G1 5XX', '555-0101', 1),
(15,'222-22-2222', 'Steve', 'Rogers', 'Senior Instructor', 'M', '1975-07-04', 'Edinburgh', 'E1 4DD', '555-0202', 2),
(16,'333-33-3333', 'Natasha', 'Romanoff', 'Senior Instructor', 'F', '1984-12-03', 'Aberdeen', 'AB15 4ZT', '555-0303', 3),
(17,'444-44-4444', 'Bruce', 'Banner', 'Senior Instructor', 'M', '1979-12-18', 'Inverness', 'IV2 5GH', '555-0404', 4),
(18,'555-55-5551', 'Thor', 'Odinson', 'Senior Instructor', 'M', '1983-11-11', 'Dundee', 'DD3 7JY', '555-0505', 5),


--more instructors
(19, '111-11-1112', 'Wanda', 'Maximoff', 'Instructor', 'F', '1990-01-30', 'Glasgow', 'G2 6QQ', '555-0606', 1),
(20, '222-22-2223', 'Pietro', 'Maximoff', 'Instructor', 'M', '1990-01-30', 'Edinburgh', 'E2 3CC', '555-0707', 2),
(21, '333-33-3334', 'Vision', 'Android', 'Instructor', 'M', '2015-04-23', 'Aberdeen', 'AB16 5NO', '555-0808', 3),
(22, '444-44-4445', 'Sam', 'Wilson', 'Instructor', 'M', '1989-09-23', 'Inverness', 'IV3 8KP', '555-0909', 4),
(23, '555-55-5552', 'Bucky', 'Barnes', 'Instructor', 'M', '1987-03-10', 'Dundee', 'DD4 8UH', '555-1011', 5),

--more administrative staff
(24, '111-11-1113', 'Nick', 'Fury', 'Administrator', 'M', '1963-12-21', 'Glasgow', 'G3 7YT', '555-1112', 1),
(25, '222-22-2224', 'Maria', 'Hill', 'Administrator', 'F', '1982-04-04', 'Edinburgh', 'E3 5RT', '555-1213', 2),
(26, '333-33-3335', 'Phil', 'Coulson', 'Administrator', 'M', '1964-07-08', 'Aberdeen', 'AB17 9PL', '555-1314', 3),
(27, '444-44-4446', 'Clint', 'Barton', 'Administrator', 'M', '1977-01-07', 'Inverness', 'IV4 9BN', '555-1415', 4),
(28, '555-55-5553', 'Scott', 'Lang', 'Administrator', 'M', '1981-02-14', 'Dundee', 'DD5 1ER', '555-1516', 5);




-- Update office data to assign Senior Instructors as managers
UPDATE Office SET managerID = 1 WHERE officeID = 1; -- Glasgow HQ already has John Doe as manager
UPDATE Office SET managerID = 15 WHERE officeID = 2; -- Assigning Steve Rogers as manager of Edinburgh Branch
UPDATE Office SET managerID = 5 WHERE officeID = 3; -- Sarah Conner is already set as the manager of Aberdeen Branch
UPDATE Office SET managerID = 17 WHERE officeID = 4; -- Assigning Bruce Banner as manager of Inverness Branch
UPDATE Office SET managerID = 11 WHERE officeID = 5; -- Peter Parker is already set as the manager of Dundee Branch




--CLIENT DATA
INSERT INTO Client (clientID, fName, lName, dob, phone, city, zipCode, tpStaffID) VALUES 
(1, 'Alice', 'Wonderland', '1995-05-05', '555-2001', 'Glasgow', 'G1 5XX', 2),
(2, 'Bob', 'Builder', '1996-06-06', '555-2002', 'Edinburgh', 'E1 6XX', 3);

-- Clients for Glasgow HQ
INSERT INTO Client (clientID, fName, lName, dob, phone, city, zipCode, tpStaffID) VALUES 
(3, 'Charlie', 'Day', '1997-03-21', '555-3001', 'Glasgow', 'G1 7XX', 2),
(4, 'Dee', 'Reynolds', '1998-04-22', '555-3002', 'Glasgow', 'G1 8XX', 14),
(5, 'Frank', 'Reynolds', '1999-05-23', '555-3003', 'Glasgow', 'G1 9XX', 19);

-- Clients for Edinburgh Branch
INSERT INTO Client (clientID, fName, lName, dob, phone, city, zipCode, tpStaffID) VALUES 
(6, 'Ron', 'Swanson', '1997-06-24', '555-4001', 'Edinburgh', 'E1 7XX', 20),
(7, 'Leslie', 'Knope', '1998-07-25', '555-4002', 'Edinburgh', 'E1 8XX', 15),
(8, 'Ben', 'Wyatt', '1999-08-26', '555-4003', 'Edinburgh', 'E1 9XX', 3);

-- Clients for Aberdeen Branch
INSERT INTO Client (clientID, fName, lName, dob, phone, city, zipCode, tpStaffID) VALUES 
(9, 'Homer', 'Simpson', '1997-09-27', '555-5001', 'Aberdeen', 'AB11 1XX', 16),
(10, 'Marge', 'Simpson', '1998-10-28', '555-5002', 'Aberdeen', 'AB12 2XX', 6),
(11, 'Bart', 'Simpson', '1999-11-29', '555-5003', 'Aberdeen', 'AB13 3XX', 21);

-- Clients for Inverness Branch
INSERT INTO Client (clientID, fName, lName, dob, phone, city, zipCode, tpStaffID) VALUES 
(12, 'Liz', 'Lemon', '1997-12-30', '555-6001', 'Inverness', 'IV2 2XX', 17),
(13, 'Jack', 'Donaghy', '1998-01-31', '555-6002', 'Inverness', 'IV3 3XX', 22),
(14, 'Tracy', 'Jordan', '1999-02-01', '555-6003', 'Inverness', 'IV4 4XX', 9);

-- Clients for Dundee Branch
INSERT INTO Client (clientID, fName, lName, dob, phone, city, zipCode, tpStaffID) VALUES 
(15, 'Michael', 'Scott', '1997-03-02', '555-7001', 'Dundee', 'DD2 2XX', 18),
(16, 'Dwight', 'Schrute', '1998-04-03', '555-7002', 'Dundee', 'DD3 3XX', 23),
(17, 'Jim', 'Halpert', '1999-05-04', '555-7003', 'Dundee', 'DD4 4XX', 11);





--REGISTRATION DATA
INSERT INTO Registration (formID, registrationDate, clientID, officeID) VALUES 
(1, '2023-01-01', 1, 1),
(2, '2023-02-01', 2, 2);


-- Registration data for new clients
INSERT INTO Registration (formID, registrationDate, clientID, officeID) VALUES 
(3, '2023-02-10', 3, 1),
(4, '2023-02-15', 4, 1),
(5, '2023-02-20', 5, 1),
(6, '2023-03-01', 6, 2),
(7, '2023-03-05', 7, 2),
(8, '2023-03-10', 8, 2),
(9, '2023-03-15', 9, 3),
(10, '2023-03-20', 10, 3),
(11, '2023-03-25', 11, 3),
(12, '2023-04-01', 12, 4),
(13, '2023-04-05', 13, 4),
(14, '2023-04-10', 14, 4),
(15, '2023-04-15', 15, 5),
(16, '2023-04-20', 16, 5),
(17, '2023-04-25', 17, 5);

--CAR DATA
--CAR DATA for Instructors and Senior Instructors only
INSERT INTO Car (carID, licenseNo, model, make, year, staffID) VALUES 
(1, 'SCX-001', 'Focus', 'Ford', 2020, 1),  -- John Doe, Senior Instructor
(2, 'SCX-002', 'Civic', 'Honda', 2021, 2), -- Jane Smith, Instructor
(3, 'SCX-003', 'Corolla', 'Toyota', 2021, 3), -- Jim Beam, Instructor
(4, 'SCX-005', 'Impreza', 'Subaru', 2020, 5), -- Sarah Conner, Senior Instructor
(5, 'SCX-006', '3', 'Mazda', 2021, 6), -- Gary Oak, Instructor
(6, 'SCX-008', 'Golf', 'Volkswagen', 2020, 8), -- Bruce Wayne, Senior Instructor
(7, 'SCX-009', 'Astra', 'Opel', 2021, 9), -- Clark Kent, Instructor
(8, 'SCX-011', 'Megane', 'Renault', 2020, 11), -- Peter Parker, Senior Instructor
(9, 'SCX-012', 'Leon', 'Seat', 2021, 12), -- Mary Jane, Instructor
(10, 'SCX-014', 'Model 3', 'Tesla', 2022, 14), -- Tony Stark, Senior Instructor
(11, 'SCX-015', 'i3', 'BMW', 2022, 15), -- Steve Rogers, Senior Instructor
(12, 'SCX-016', 'Zoe', 'Renault', 2022, 16), -- Natasha Romanoff, Senior Instructor
(13, 'SCX-017', 'ID.3', 'Volkswagen', 2022, 17), -- Bruce Banner, Senior Instructor
(14, 'SCX-018', 'Ioniq', 'Hyundai', 2022, 18), -- Thor Odinson, Senior Instructor
(15, 'SCX-019', 'Fiesta', 'Ford', 2021, 19), -- Wanda Maximoff, Instructor
(16, 'SCX-020', 'Clio', 'Renault', 2021, 20), -- Pietro Maximoff, Instructor
(17, 'SCX-021', '208', 'Peugeot', 2021, 21), -- Vision, Instructor
(18, 'SCX-022', 'Yaris', 'Toyota', 2021, 22), -- Sam Wilson, Instructor
(19, 'SCX-023', 'Polo', 'Volkswagen', 2021, 23); -- Bucky Barnes, Instructor


--INSPECTION DATA
INSERT INTO Inspection (inspectionID, inspectionDate, comment, carID) VALUES 
(1, '2023-01-10', 'No issues found', 1),
(2, '2023-01-15', 'Minor scratches', 2);
-- Additional inspection data
INSERT INTO Inspection (inspectionID, inspectionDate, comment, carID) VALUES 
(3, '2023-02-05', 'Oil change needed', 1),
(4, '2023-02-10', 'Brake check passed', 2),
(5, '2023-02-15', 'Tire replacement required', 1),
(6, '2023-02-20', 'Engine check required', 2),
(7, '2023-02-25', 'No issues found', 1),
(8, '2023-03-01', 'Windshield wiper replacement', 2),
(9, '2023-03-05', 'Air filter replacement needed', 1),
(10, '2023-03-10', 'Battery in good condition', 2),
(11, '2023-03-15', 'No issues found', 1),
(12, '2023-03-20', 'Headlights adjustment required', 2),
(13, '2023-03-25', 'Oil leak detected', 1),
(14, '2023-03-30', 'Steering alignment check', 2),
(15, '2023-04-04', 'Brake fluid replacement', 1),
(16, '2023-04-09', 'AC system check', 2),
(17, '2023-04-14', 'No issues found', 1),
(18, '2023-04-19', 'Exhaust system check', 2);




--INTERVIEW DETAILS DATA
INSERT INTO InterviewDetails (clientID, interviewDate, interviewTime, comments, staffID) VALUES 
(1, '2023-01-20', '10:00:00', 'Positive attitude', 2),
(2, '2023-01-25', '11:00:00', 'Needs improvement in focus', 3);

-- Additional InterviewDetails data
INSERT INTO InterviewDetails (clientID, interviewDate, interviewTime, comments, staffID) VALUES 
(3, '2023-02-11', '10:30:00', 'Showed enthusiasm for learning', 2),
(4, '2023-02-12', '11:00:00', 'Asked insightful questions', 14),
(5, '2023-02-13', '09:45:00', 'Seemed nervous', 19),
(6, '2023-02-14', '14:00:00', 'Very confident', 20),
(7, '2023-02-15', '15:30:00', 'Lacks basic knowledge', 15),
(8, '2023-02-16', '16:15:00', 'Has potential, but needs focus', 3),
(9, '2023-02-17', '10:00:00', 'Excellent comprehension', 16),
(10, '2023-02-18', '11:15:00', 'Distracted during the session', 6),
(11, '2023-02-19', '13:30:00', 'Motivated and eager', 21),
(12, '2023-02-20', '08:30:00', 'Punctual but unprepared', 17),
(13, '2023-02-21', '09:00:00', 'Well prepared and articulate', 22),
(14, '2023-02-22', '14:30:00', 'Needs to improve communication skills', 9),
(15, '2023-02-23', '15:00:00', 'Outstanding performance', 18),
(16, '2023-02-24', '15:45:00', 'Average understanding', 23),
(17, '2023-02-25', '16:00:00', 'Shows great interest in practical learning', 11);



--LESSON DATA
INSERT INTO Lesson (lessonID, lessonDate, startDate, topicCovered, clientID, staffID, mileage, instructorComments, lessonStatus) VALUES 
(1, '2023-01-30', '2023-01-01', 'Basic controls', 1, 2, 10, 'Good progress', 'Completed'),
(2, '2023-02-05', '2023-01-15', 'Road signs', 2, 3, 15, 'Satisfactory understanding', 'Completed');

-- Additional Lesson data
INSERT INTO Lesson (lessonID, lessonDate, startDate, topicCovered, clientID, staffID, mileage, instructorComments, lessonStatus) VALUES 
(3, '2023-02-10', '2023-01-20', 'Parallel parking', 3, 14, 5, 'Needs more practice', 'Completed'),
(4, '2023-02-15', '2023-01-25', 'Highway driving', 4, 19, 20, 'Excellent control', 'Completed'),
(5, '2023-02-20', '2023-01-30', 'Night driving', 5, 2, 10, 'Very cautious', 'Completed'),
(6, '2023-02-25', '2023-02-01', 'Defensive driving', 6, 20, 12, 'Understanding and application are good', 'Completed'),
(7, '2023-03-02', '2023-02-05', 'Driving in rain', 7, 15, 8, 'Improved from last lesson', 'Completed'),
(8, '2023-03-07', '2023-02-10', 'Emergency stops', 8, 3, 7, 'Quick reflexes', 'Completed'),
(9, '2023-03-12', '2023-02-15', 'Reverse parking', 9, 16, 6, 'Struggles with spatial awareness', 'Completed'),
(10, '2023-03-17', '2023-02-20', 'Eco-driving', 10, 6, 9, 'Conscientious and eco-friendly driving', 'Completed'),
(11, '2023-03-22', '2023-02-25', 'City driving', 11, 21, 11, 'Navigates traffic well', 'Completed'),
(12, '2023-03-27', '2023-03-01', 'Country driving', 12, 17, 13, 'Confident in rural settings', 'Completed'),
(13, '2023-04-01', '2023-03-05', 'Motorway driving', 13, 22, 16, 'Needs to watch speed limits', 'Completed'),
(14, '2023-04-06', '2023-03-10', 'Vehicle maintenance', 14, 9, 4, 'Highly interested in car mechanics', 'Completed'),
(15, '2023-04-11', '2023-03-15', 'Driving etiquette', 15, 18, 5, 'Polite and considers other drivers', 'Completed'),
(16, '2023-04-16', '2023-03-20', 'Using navigation systems', 16, 23, 8, 'Learns technology quickly', 'Completed'),
(17, '2023-04-21', '2023-03-25', 'Fuel-efficient driving', 17, 11, 7, 'Understands importance of efficiency', 'Completed');

-- Extra lessons for selected clients
INSERT INTO Lesson (lessonID, lessonDate, startDate, topicCovered, clientID, staffID, mileage, instructorComments, lessonStatus) VALUES 
(18, '2023-02-12', '2023-01-05', 'Parking techniques', 1, 14, 8, 'Improved parking skills', 'Completed'),
(19, '2023-03-10', '2023-02-08', 'Advanced controls', 1, 2, 12, 'Mastered advanced techniques', 'Completed'),
(20, '2023-03-15', '2023-02-12', 'Defensive driving', 3, 19, 14, 'Good defensive driving', 'Completed'),
(21, '2023-03-05', '2023-02-18', 'Traffic rules', 6, 20, 10, 'Clear understanding of traffic laws', 'Completed'),
(22, '2023-04-10', '2023-03-15', 'Rural driving', 6, 15, 16, 'Comfortable with rural environments', 'Completed'),
(23, '2023-02-20', '2023-01-25', 'Speed control', 2, 3, 9, 'Better at speed management', 'Completed'),
(24, '2023-03-25', '2023-02-28', 'Night driving', 5, 22, 7, 'Shows confidence driving at night', 'Completed');



--DRIVING TEST
-- DrivingTest data for clients with at least 2 lessons
INSERT INTO DrivingTest (testID, writtenScore, drivingScore, testDate, testTime, clientID, drivingStatus) VALUES 
(1, 85, 80, '2023-03-05', '10:00:00', 1, 'Passed'),
(2, 78, 70, '2023-03-06', '11:00:00', 2, 'Passed'),
(3, 90, 85, '2023-03-07', '12:00:00', 3, 'Passed'),
(4, 65, 60, '2023-03-08', '13:00:00', 5, 'Failed'),
(5, 75, 70, '2023-03-09', '14:00:00', 6, 'Failed');


-- TestReview data for the failed test
INSERT INTO TestReview (testID, instructorComments) VALUES 
(4, 'Needs to improve attention to detail and reaction to road signs.'),
(5, 'Needs to check their driving speed.');


