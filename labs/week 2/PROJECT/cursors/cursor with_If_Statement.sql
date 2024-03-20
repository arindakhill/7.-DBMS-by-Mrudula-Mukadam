--Add fee column
ALTER TABLE Lesson
ADD fee DECIMAL(10, 2) DEFAULT 20.00;

--set fee to USD 20
UPDATE Lesson
SET fee = 20;

-- CURSOR WITH IF STATEMENT
DECLARE @lessonID INT, @mileage INT, @increment INT;

DECLARE lesson_cursor CURSOR FOR
SELECT lessonID, mileage
FROM Lesson;

OPEN lesson_cursor;

FETCH NEXT FROM lesson_cursor INTO @lessonID, @mileage;

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @mileage > 30
        SET @increment = 10
    ELSE IF @mileage > 25
        SET @increment = 8
    ELSE IF @mileage > 20
        SET @increment = 5
    ELSE
        SET @increment = 0

    IF @increment > 0
    BEGIN
        UPDATE Lesson
        SET fee = fee + @increment
        WHERE lessonID = @lessonID;
    END

    FETCH NEXT FROM lesson_cursor INTO @lessonID, @mileage;
END;

CLOSE lesson_cursor;
DEALLOCATE lesson_cursor;
