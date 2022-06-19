use GroceryInformationSystem

	--Retrieve the Person informations between two DOB values.
	CREATE PROCEDURE usp_getDOBInfos
		@DOBInput1 int,
		@DOBInput2 int AS
		SELECT *
		FROM Person
		WHERE DOB>@DOBInput1 AND DOB <@DOBInput2
		GO

	EXEC sp_helptext[usp_getDOBInfos]
	EXEC usp_getDOBInfos 1999, 2001
/******************************************************/

--Retrieve Character informations regarding to given EmployeeID input
	CREATE PROCEDURE usp_getPersonInfoEmployee
		@EmployeeID int AS
		SELECT *
		FROM Person
		INNER JOIN Employee
		ON Employee.EmployeeSSNO= Person.SSNO
		WHERE Employee.EmployeeID= @EmployeeID

		EXEC sp_helptext[usp_getPersonInfoEmployee]
		exec usp_getPersonInfoEmployee 101

/******************************************************/

	-- Retrieve The Average Price between given inputs
	CREATE PROCEDURE usp_avgPrice
		@PriceInput1 int,
		@PriceInput2 int,
		@avgPrice int OUTPUT
		AS 
		SELECT @avgPrice = (SELECT AVG(Price)
							FROM Product
							WHERE Price > @PriceInput1 AND Price < @PriceInput2)
		RETURN @avgPrice
		GO
		
		declare @avgPrice int
		
		EXEC @avgPrice = usp_avgPrice 3,10,0
		SELECT 'Average Price: ',@avgPrice

		EXEC sp_helptext[usp_avgPrice]