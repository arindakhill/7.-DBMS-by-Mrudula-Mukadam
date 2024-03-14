--no 1 names and telephone numbers of managers at each office
SELECT o.officeID,o.officeName,lname, fname, s.phone
	FROM Staff s, Office o
	WHERE s.staffID = o.managerID;
Go
 
 --no 2 full address of all offices in Glasgow
SELECT officeID, officeName,CONCAT (city ,',', zipCode) AS 'Full Address'
	FROM Office
	WHERE city like '%Glasgow%';
Go


--no 4 total number of staff at each office 
SELECT s.officeID, officeName, COUNT(*) AS 'Total Number of Staff'
	FROM Staff s, Office o
	WHERE s.officeID = o.officeID
	GROUP BY s.officeID, officeName;
Go
 
 --10 Registration number of cars that have no faults found
SELECT c.licenseNo, i.comment 
	FROM Car c, Inspection i
	WHERE c.carID = i.carID AND comment  LIKE '%No issues%';