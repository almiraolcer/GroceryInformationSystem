
--1)

ALTER TABLE Payment 
DROP CONSTRAINT [PK__Payment__9B556A58B4209F6B]
GO

	--CLUSTERED INDEX
Create 
	Clustered Index ix_Payment_PaymentIDCurrencyPaymentType
	On Payment(PaymentID,Currency, PaymentType)


	--NONCLUSTERED INDEX
Create
	NonClustered Index ix_Payment_PaymentIDCurrencyPaymentType_NonC
	On Payment(PaymentID,Currency, PaymentType)

	--UNIQUE INDEX
Create 
	Unique Index ix_Payment_PaymentIDCurrencyPaymentType_Uniq
	ON Payment(PaymentID,Currency, PaymentType)


EXEC sp_helpindex 'Payment'

--2)
--A) Find Person's SSNO, FirstName, LastName of the Person whose EmployeeID = 107
Create View vw_Employee
As
	Select HireDate,JobTitle, Currency, PaymentType
	From Employee
	JOIN Payment
	ON Payment.EmployeeIDToPayment = Employee.EmployeeID

	EXEC sp_helptext 'vw_Employee' ;
	Select * FROM vw_Employee

------------------------------apply 1 insert and 1 delete to the view.-------------------------
	INSERT INTO vw_Employee
	VALUES(2007,'Deneme_Cashier','tl','Deneme_Payment')

	DELETE FROM vw_Employee Where JobTitle = 'Deneme_Cashier'
------------------------------------------------------------------------------------------------

--B) Retrieve all item ids, item names and character names of characters.
Create View vw_Person
As
	Select SSNO, FirstName, LastName, ProductName
	From Person
	LEFT OUTER JOIN Product
	ON Person.SSNO = Product.CustomerSSNOToProduct

		EXEC sp_helptext 'vw_Person' ;
	SELECT * FROM vw_Person ORDER BY SSNO




