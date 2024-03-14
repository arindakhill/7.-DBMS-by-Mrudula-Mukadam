USE EasyDrive;

 
CREATE TABLE Staff (
    staffID INT PRIMARY KEY,
    SSN CHAR(11) UNIQUE,
    fName VARCHAR(255),
    lName VARCHAR(255),
    position VARCHAR(255),
    gender CHAR(1),
    dob DATE,
    city VARCHAR(255),
    zipCode VARCHAR(10),
    phone VARCHAR(15),
    officeID INT,
);
 
CREATE TABLE Office (
    officeID INT PRIMARY KEY,
    officeName VARCHAR(255),
    city VARCHAR(255),
    zipCode VARCHAR(10),
    managerID INT,
    phone VARCHAR(15),
    FOREIGN KEY (managerID) REFERENCES Staff(staffID)
);
 
CREATE TABLE Car (
    carID INT PRIMARY KEY,
    licenseNo VARCHAR(20),
    model VARCHAR(255),
    make VARCHAR(255),
    year INT,
    staffID INT,
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);
 
CREATE TABLE Client (
    clientID INT PRIMARY KEY,
    fName VARCHAR(255),
    lName VARCHAR(255),
    dob DATE,
    phone VARCHAR(15),
    city VARCHAR(255),
    zipCode VARCHAR(10),
    tpStaffID INT,
    FOREIGN KEY (tpStaffID) REFERENCES Staff(staffID)
);
 
CREATE TABLE Registration (
    formID INT PRIMARY KEY,
    registrationDate DATE,
    clientID INT,
    officeID INT,
    FOREIGN KEY (clientID) REFERENCES Client(clientID),
    FOREIGN KEY (officeID) REFERENCES Office(officeID)
);
 
CREATE TABLE Inspection (
    inspectionID INT PRIMARY KEY,
    inspectionDate DATE,
    comment TEXT,
    carID INT,
    FOREIGN KEY (carID) REFERENCES Car(carID)
);
 
CREATE TABLE InterviewDetails (
    clientID INT,
    interviewDate DATE,
    interviewTime TIME,
    comments TEXT,
    staffID INT,
    PRIMARY KEY (clientID, staffID, interviewDate),
    FOREIGN KEY (clientID) REFERENCES Client(clientID),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);
 
CREATE TABLE Lesson (
    lessonID INT PRIMARY KEY,
    lessonDate DATE,
    startDate DATE,
    topicCovered TEXT,
    clientID INT,
    staffID INT,
    mileage INT,
    instructorComments TEXT,
    lessonStatus VARCHAR(50),
    FOREIGN KEY (clientID) REFERENCES Client(clientID),
    FOREIGN KEY (staffID) REFERENCES Staff(staffID)
);
 
CREATE TABLE DrivingTest (
    testID INT PRIMARY KEY,
    writtenScore INT,
    drivingScore INT,
    testDate DATE,
    testTime TIME,
    clientID INT,
    drivingStatus VARCHAR(50),
    FOREIGN KEY (clientID) REFERENCES Client(clientID)
);
 
CREATE TABLE TestReview (
    testID INT PRIMARY KEY,
    instructorComments TEXT,
    FOREIGN KEY (testID) REFERENCES DrivingTest(testID)
);
Go
 
ALTER TABLE Staff ADD FOREIGN KEY (officeID) REFERENCES Office(officeID)
 
Go