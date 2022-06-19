/*(a) query/queries that make use of the following String functions (you need to use all
the functions at least once): ASCII, CHAR, LTRIM, TRIM, LOWER, UPPER, REVERSE, LEN,
LEFT, RIGHT, CHARINDEX, SUBSTRING, REPLICATE, SPACE, PATINDEX, REPLACE, STUFF.*/

/*ASCII*/

/*Query1: Get FullFirstName and The First LEtter of FirstName And ASCII OF that letter*/
Select FirstName, LEFT(FirstName,1) AS [First Letter] ,ASCII(FirstName) AS [ASCII of First Letter ]
From Person

/*Query2 : Get Full LastName and The First LEtter of LastName And ASCII OF that letter*/
Select LastName, LEFT(LastName,1) AS [First Letter] ,ASCII(LastName) AS [ASCII of First Letter ]
From Person

/*CHAR*/

/*Query1: Shows the char equvialence of SSNO*/
Select SSNO, FirstName,LastName, CHAR(100-SSNO) AS [CHAR equivalence of SSNO]
From Person
/*Query2: Shows the CHAR equivalence of LEFT two digits of DOB*/
Select DOB, FirstName,LastName, CHAR(100- LEFT(DOB,2)) AS [CHAR equivalence of LEFT two digits of DOB]
From Person

/*LOWER & UPPER*/

/*Query1 : FirstName in lower , LastName in Upper*/
Select Lower(FirstName), Upper(LastName)
From Person
/*Query2 FirstName in Upper , LastName in Lower*/
Select Upper(FirstName), Lower(LastName)
From Person

/*REVERSE*/
/*Query1: Reverse the DOB*/
Select Reverse(DOB)
From Person
/*Query2 : Reverse and print LastName in lower*/
Select Reverse(Upper(FirstName))
From Person

/*LEN*/
/*Query1: Get the length of CompanyName*/
SELECT CompanyName, LEN(CompanyName)
FROM DeliveryCompany

/*Query2: Get the length of ProductName and Location */
SELECT ProductName, LEN(ProductName), Location, LEN(Location)
FROM Product
JOIN ProductStore
ON Product.ProductID=ProductStore.ProductIDToProductStore

/*RTRIM & LTRIM*/
/*Query1: Delete the spaces with RTRIM and LTRIM*/
SELECT RTRIM(FirstName+'    ')+LastName, LTRIM(FirstName+'    ')+LastName
From Person

/*Query2 Delete the spaces with RTRIM and LTRIM*/
SELECT RTRIM('    '+FirstName)+LastName, LTRIM('    '+FirstName)+LastName
From Person



/*LEFT*/

/*Query1: Add dot to Firstname's index 1.*/
SELECT LEFT(FirstName,1) + '. ' + LastName
FROM Person

/*Query2 : Add dot to Lirstname's index 1.*/
SELECT FirstName+ '. ' + LEFT(LastName,1)
FROM Person

/*RIGHT*/

/*Query1 : Get 2 index from right side of DOB*/
SELECT FirstName+ LastName +  RIGHT(DOB,2) 
FROM Person

/*Query2 : Get 4 from right side of SSNO*/
SELECT RIGHT(SSNO,4)+ '-' + FirstName+ '.' +LastName   
FROM Person


/* Charindex & Patindex*/

/*Query1 : Return Charindex/Patindex of packaged products*/
SELECT ProductName , CHARINDEX( 'Packaged', ProductType)
From Product

SELECT ProductName , PATINDEX( 'Packaged', ProductType)
From Product

/*Query2 : Return Charindex/Patindex of products that involves 'Packaged'*/

SELECT ProductName , CHARINDEX( '%Packaged%', ProductType)
From Product

SELECT ProductName , PATINDEX( '%Packaged%', ProductType)
From Product

/*SUBSTRING*/

/*Query1 : Get substring of currency between 1-2*/

Select PaymentID,  SUBSTRING(Currency, 1,2) AS Currency
From Payment

/*Query2 :  Get substring of Location between 1-4*/

Select StoreNo,  SUBSTRING(Location, 1,4) AS Location
From ProductStore


/*REPLICATE*/

/*Query1: A a column named Blank and put 10 - to it.*/
SELECT Location, REPLICATE('-',10) AS BLANK , PhoneNumberOfStore
From ProductStore

/*Query2 : put 3 start to the beginning and the end to the CompanyName*/
Select DelCompID, REPLICATE('*',3)+CompanyName+REPLICATE('*',3)
From DeliveryCompany



/*SPACE*/

/*Query1: Add space between*/
SELECT FirstName + SPACE(10) + LastName AS [Student Full Name]
FROM Person

/*Query2 : Add space between */
SELECT FirstName + SPACE(10) + JobTitle AS [Employee Full Identity]
FROM Employee
JOIN Person
ON Person.SSNO =Employee.EmployeeSSNO


/*REPLACE*/

/*Query1 : Replace Kargo with Shipment*/
SELECT REPLACE(CompanyName, 'Kargo', 'Shipment')
From DeliveryCompany

/*Query2 : Replace first  tl with Türk lirasý and Türk with Turkish. */
SELECT REPLACE(REPLACE(Currency, 'tl', 'Türk Lirasý'), 'Türk', 'Turkish')
From Payment


/*REPLACE*/

/*Query1 : put *** instead to the index 1-3. of PaymentID*/

SELECT STUFF(PaymentID,1,3,'***'), PaymentType
From Payment

/*Query2: put *** instead to the index 1-3 of DOB*/

SELECT FirstName, LastName, STUFF(DOB,1,3,'***')
From Person


/*Inserting Date type to the database*/

ALTER TABLE Product
ADD ExpireDateofProduct Date



UPDATE Product SET ExpireDateofProduct = '2022-05-03' where ProductID=1;
UPDATE Product SET ExpireDateofProduct = '2022-05-22' where ProductID=2;
UPDATE Product SET ExpireDateofProduct = '2022-05-08' where ProductID=3;
UPDATE Product SET ExpireDateofProduct = '2022-05-13' where ProductID=4;
UPDATE Product SET ExpireDateofProduct = '2022-05-19' where ProductID=5;
UPDATE Product SET ExpireDateofProduct = '2022-10-17' where ProductID=101;
UPDATE Product SET ExpireDateofProduct = '2022-11-16' where ProductID=102;
UPDATE Product SET ExpireDateofProduct = '2022-12-14' where ProductID=201;
UPDATE Product SET ExpireDateofProduct = '2022-12-23' where ProductID=202;
UPDATE Product SET ExpireDateofProduct = '2022-05-22' where ProductID=301;
UPDATE Product SET ExpireDateofProduct = '2023-02-21' where ProductID=302;
UPDATE Product SET ExpireDateofProduct = '2023-01-06' where ProductID=303;
UPDATE Product SET ExpireDateofProduct = '2022-06-26' where ProductID=304;
UPDATE Product SET ExpireDateofProduct = '2022-07-18' where ProductID=401;
UPDATE Product SET ExpireDateofProduct = '2022-07-19' where ProductID=402;
UPDATE Product SET ExpireDateofProduct = '2022-09-15' where ProductID=403;
UPDATE Product SET ExpireDateofProduct = '2022-09-18' where ProductID=501;
UPDATE Product SET ExpireDateofProduct = '2022-05-03' where ProductID=502;
UPDATE Product SET ExpireDateofProduct = '2024-04-11' where ProductID=601;
UPDATE Product SET ExpireDateofProduct = '2023-02-02' where ProductID=602;

/*ISDATE*/
/*Query1 : Check if DOB is date*/
Select ISDATE(DOB)
From Person
/*Query2 : Check if ExpireDateofProduct is date*/
Select ISDATE(Year(ExpireDateofProduct))
From Product

/*DAY*/

/*Query1 : Get the day of ExpireDateofProduct*/
Select Day(ExpireDateofProduct)
From Product

/*Query2 : Get the day of ExpireDateofProduct where Day > 13.*/
Select Day(ExpireDateofProduct) AS ExpireDay, ProductName 
From Product
Where Day(ExpireDateofProduct) > 13

/*MONTH */
/*Query1: Get the Month of ExpireDateofProduct*/
Select Month(ExpireDateofProduct)
From Product

/*Query2 : Get the Month of ExpireDateofProduct where Month > 6.*/
Select Month(ExpireDateofProduct) AS ExpireMonth, ProductName 
From Product
Where Month(ExpireDateofProduct) > 6

/*YEAR*/
/*Query1: Get the Year of ExpireDateofProduct*/
Select Year(ExpireDateofProduct)
From Product

/*Query2 : Get the Year of ExpireDateofProduct where year = 2023*/
Select Year(ExpireDateofProduct) AS ExpireYear, ProductName 
From Product
Where Year(ExpireDateofProduct) = 2023

/*DateName*/

/*Query1: Give the name of year*/
Select DateName(year, ExpireDateofProduct)
From Product

/*Query2 : Give the name of Month*/
Select DateName(month,ExpireDateofProduct) AS NameOfMonth, ProductName 
From Product

/*DateAdd*/

/*Query1 : Add 2 years to ExpireDateofProduct*/
SELECT DATEADD(year, 2, ExpireDateofProduct) AS DateAdd
From Product

/*Query2 : Add 12 months to ExpireDateofProduct*/
SELECT DATEADD(Month, 12, ExpireDateofProduct) AS DateAdd
From Product

/*DateDiff*/

/*Query1 : Get the Day Date difference where months of x1 is 10 and month of x2 is 5.*/
SELECT DateDiff (Day, x2.ExpireDateofProduct, x1.ExpireDateofProduct)
From Product x1, Product x2
Where month(x1.ExpireDateofProduct) = 10 AND month(x2.ExpireDateofProduct)= 05 

/*Query2 : Get the Day Date difference where year of x1 is bigger than 2022 */

SELECT DateDiff (Day, x2.ExpireDateofProduct, x1.ExpireDateofProduct)
From Product x1, Product x2
Where Year(x1.ExpireDateofProduct) > 2022


/*ABS*/
/*Query1 : ABS value of -DOB*/

Select ABS(0- DOB)
From Person

/*Query2 : ABS value of the Day Date difference where months of x1 is 10 and month of x2 is 5. */

SELECT ABS( DateDiff (Day, x1.ExpireDateofProduct, x2.ExpireDateofProduct))
From Product x1, Product x2
Where month(x1.ExpireDateofProduct) = 10 AND month(x2.ExpireDateofProduct)= 05 


/*CEILING*/

/*Query1 : Ceiling the value of Product Price after the operation*/
Select CEILING(Price - 0.25)
From Product

/*Query2 : Ceiling the value of Product Price after the operation. */
Select CEILING(x1.Price- x2.Price - 1.50)
From Product x1, Product x2
Where x1.Price> x2.Price

/*FLOOR*/

/*Query1: Floor operation of Product after the operation.*/
Select FLOOR(Price - 0.25)
From Product

/*Query2 : Floor operation of Product after the operation.*/
Select FLOOR(x1.Price- x2.Price - 1.50)
From Product x1, Product x2
Where x1.Price> x2.Price

/*SQUARE*/

/*Query1 : Squares the Price*/
Select SQUARE(Price )
From Product

/*Query2 : Squares the StockNumber*/
Select SQUARE(StockNumber)
From ProductStock

/*SQRT*/

/*Query1 : Squareroot the price*/
Select SQRT(Price )
From Product

/*Query2 : Squareroot the ProductStock*/
Select SQRT(StockNumber)
From ProductStock


/*RAND*/

/*Query1 : Random value of price where price= 10*/
Select Price = RAND()*(10-5+1)+5, ProductName
From Product
Where Price = 10

/*Query2 : Floor the Random value of price where price= 18*/
Select Price = FLOOR(RAND()*(10-5+1)+5), ProductName
From Product
Where Price = 18


/*ROUND*/

/*Query1 : Round the price to 2 */
Select ROUND(Price,2), ProductName
From Product
Where Price <10

/*Query2 Round the price to -1 */
Select ROUND(Price,-1), ProductName
From Product
Where Price <10




