/*Retrieve all the tuples of Person relation*/
Select * 
	From Person

/*Retrieve all the tuples of Product relation*/
Select * 
	From Product

/*Retrieve all tuples of Employee but just show the attributes of JobTitle and Salary*/
Select EmployeeSalary, JobTitle
	From Employee

/*Retrieve all tuples of DeliveryCompany but just show the attributes of DelCompID and CompanyName*/
Select DelCompID, CompanyName
	From DeliveryCompany

/*Retrieve the tuples of Payment WHERE Currency is ‘tl’*/
Select * From Payment
Where Currency='tl'

/*Retrieve the tuples of ProductStock WHERE StockNumber is greater than 500*/
Select * From ProductStock
Where StockNumber > 500;

/*Retrieve the tuples of ProductStore where The name of Location  involves letter ‘e’*/
Select * From ProductStore
WHERE Location LIKE '%[e]%'

/*Retrieve the tuples of Person where The DOB ends with  98 OR 99.*/
Select * From Person
WHERE DOB LIKE '%[98]' OR DOB LIKE '%[99]';

/*Retrieve tuples from Manager WHERE managerID is greater than 205 and sorted by ManagerSSNO in Ascending order.*/
Select * 
From Manager
Where ManagerID > 205
Order By ManagerSSNO ASC

/*Retrieve tuples of DeliveryCompany WHERE CompanyName involves letter ‘t’ and sorted by StoreNo in Descending order.*/
Select * 
From DeliveryCompany
Where CompanyName LIKE '%[t]%'
Order By StoreNoDeliveryCompany DESC

/*Retrieve tuples from Person WHERE Gender is Female and sorted by DOB in Ascending AND FirstName in Descending order.*/
Select * 
From Person
Where Gender = 'Female'
Order By DOB ASC, FirstName DESC

/*Retrieve tuples from Product WHERE ProductType is NonPackaged and sorted by Price in Descending AND ProductName in Ascending order.*/
Select * 
From Product
Where ProductType = 'NonPackaged'
Order By Price DESC, ProductName ASC

/*Retrieve first 5 tuples of Product Category.*/
Select TOP 5 * 
From ProductCategory

/*Retrieve first 5 tuples of CustomerSSNo and PaymentID from Payment that the currency is euro. */
Select TOP 5 CustomerSSNOToPayment, PaymentID
From Payment
Where Currency = 'euro'

/*Retrieve first 20 percent tuples of Product Category.*/
Select Top 20 Percent *
From ProductCategory

/*Retrieve first 20 percent of Payment wiyh CustomerSSNo and PaymentID WHERE the currency is euro. */
Select Top 20 PERCENT CustomerSSNOToPayment, PaymentID
From Payment
Where Currency = 'euro'

/*Retrieve ProductType and SUM, COUNT, MIN AND MAX of Prices that is gruup ob ProductType.*/
Select ProductType, SUM(Price) AS SumOfPrice
	FROM Product
		GROUP BY ProductType

Select ProductType, MIN(Price) AS MinPrice
	FROM Product
		GROUP BY ProductType

Select ProductType, MAX(Price) AS MaxPrice
	FROM Product
		GROUP BY ProductType

Select ProductType, COUNT(Price) AS CountPrice
	FROM Product
		GROUP BY ProductType

/*Retrieve Location and SUM, COUNT, MIN AND MAX of StoreNo that is group by Location.*/
Select Location, SUM(StoreNo) AS SumOfStoreNo
	FROM ProductStore
		GROUP BY Location

Select Location, MIN(StoreNo) AS MinStoreNo
	FROM ProductStore
		GROUP BY Location

Select Location, MAX(StoreNo) AS MaxStoreNo
	FROM ProductStore
		GROUP BY Location

Select Location, COUNT(StoreNo) AS CountStoreNo
	FROM ProductStore
		GROUP BY Location

/*List all the relations you have created in your database using all three techniques you have learned.*/
Select * From sys.tables

Select * From Sys.objects
where type='u'

Select * From INFORMATION_SCHEMA.TABLES
