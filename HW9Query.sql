/*Function calculateDaysleft returns the days that are left from now 
until expire date of the product*/

CREATE FUNCTION udf_CalculateThDaysLeft(@ExpireDateofProduct DATE)
RETURNS INTEGER
AS
BEGIN
	declare @dateToday DATE
	declare @daysLeft INTEGER
	set @dateToday = GETDATE()
	set @daysLeft = DATEDIFF(YEAR, @dateToday, @ExpireDateofProduct)
	set @daysLeft  = @daysLeft  - CASE
	WHEN (MONTH(@ExpireDateofProduct) > MONTH(@dateToday))
	OR
	((MONTH(@ExpireDateofProduct) = MONTH(@dateToday)
	AND
	(DAY(@ExpireDateofProduct) > DAY(@dateToday)))) 
	THEN 0
	ELSE 1
	END
return @daysLeft
END

EXEC sp_helptext[udf_CalculateThDaysLeft]
select ProductName, ExpireDateofProduct,
dbo.udf_CalculateThDaysLeft(ExpireDateofProduct)
from Product



/*******************************************************************************************//* Fuction ProductsWithMinStockNumber returns the Products with a minimum number of stocks*/create FUNCTION udf_ProductsWithMinStockNumber (
@min INTEGER)
RETURNS TABLE
AS
RETURN
select *
From Product
Join ProductStock
On Product.ProductID = ProductStock.ProductIDToProductStock
where StockNumber >= @minEXEC sp_helptext[udf_ProductsWithMinStockNumber]select * from udf_ProductsWithMinStockNumber(200)--Local Temp Relation
--1) Joined Person and Employee table, so, can access to necessary informations from #IndividualDetail table
CREATE TABLE #IndividualDetails(
	SSNO int,
	DOB int,
	Gender nvarchar(50),
	FirstName nvarchar(50),
	LastName nvarchar(50),
	EmployeeID int NOT NULL,
	EmployeeSSNO int,
	EmployeeSalary int,
	HireDate int,
	JobTitle nvarchar(50),
	PRIMARY KEY(SSNO)
)

INSERT INTO #IndividualDetails
VALUES(3, 1996, 'Male','Mustafa', 'Karataþ',101, 3 ,7750 ,2018 , 'Butcher')
INSERT INTO #IndividualDetails
VALUES(8, 2000,'Female', 'Ecem', 'Varlý',102 ,8 , 6500 ,2021, 'Bakery')
INSERT INTO #IndividualDetails
VALUES(9, 1997, 'Female','Afife', 'Altýnkaya',103,9 , 4253 , 2021, NULL )

select * 
from #IndividualDetails

select * 
from #IndividualDetails
where DOB= 1996

select * 
from #IndividualDetails
Where JobTitle='Bakery'



--2) Joined Product and Product Stock table, so, can access to necessary informations from #ProductDetail table

	CREATE TABLE #ProductDetail(
		ProductID Int, 
		ProductName Nvarchar(50),
		ProductType Nvarchar(50),
		Price Int,
		CustomerSSNOToProduct Int,
		EmployeeIDToProduct Int,
		StockID Int,
		StockNumber Int,
		ProductIDToProductStock Int ,
		StoreNoToProductStock Int,
		PRIMARY KEY(ProductID)
	)


	
	INSERT INTO #ProductDetail
	VALUES(1, 'Bread', 'NonPackaged', 13, 5,102, 1000, 500 ,1 , 1)
	INSERT INTO #ProductDetail
	VALUES(2, 'Cake', 'NonPackaged', 36, 11, 106, 2000, 500 ,2, 2)
	INSERT INTO #ProductDetail
	VALUES(3, 'Cookie', 'NonPackaged', 23, 21, 109,3000, 405 ,3 ,3)
select * 
from #ProductDetail

select * 
from #ProductDetail
where ProductID > 2

select * 
from #ProductDetail
Where ProductName='Cake'