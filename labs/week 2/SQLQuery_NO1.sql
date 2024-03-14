CREATE OR ALTER PROCEDURE getFactorial
    @n INT
AS
BEGIN
    DECLARE @result BIGINT = 1;

    IF @n < 0
    BEGIN
        PRINT 'Error: Input must be a non-negative number.';
        RETURN;
    END; 

    DECLARE @numHolder INT = @n 

    WHILE @n > 0
    BEGIN
        SET @result = @result * @n;
        SET @n = @n - 1;
    END;

    PRINT CAST(@numHolder  AS VARCHAR(10)) + '! = ' + CAST(@result AS VARCHAR(20));
END;
GO
EXEC getFactorial 5;
GO
