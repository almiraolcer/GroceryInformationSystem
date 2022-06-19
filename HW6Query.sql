/*list all the Employees who works as “Bakery” or “Cashier”. For each such
Person, display his/her employeeID and EmployeeSalary.*/

select  EmployeeSalary, EmployeeID
from Employee
Where EmployeeSSNO IN (
	select EmployeeSSNO
	From Product
	Where JobTitle= 'Bakery' or JobTitle='Butcher')

/*list all the Managers who has contact with MNGKargo For each such
Person, display his/her ManagerID and ManagerSalary.*/

select  ManagerSalary, ManagerID
from Manager
Where ManagerID IN (
	select ManagerIDToDeliveryCompany
	From DeliveryCompany
	Where CompanyName= 'MNGKargo')

/*CORRALATED SUBQUERY*/

/* UNION: Retrieve Person First and Last Name of Employees work as Cashier, as well as sells the packaged products.’
gender.*/

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where JobTitle='Cashier')

UNION

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where EmployeeID IN(
		Select EmployeeIDToProduct
		From  Product
		Where ProductType='Packaged'))

/* UNION: Retrieve Product's Name of Where product category is bakery, as well as Location is Kültür or Meltem.*/

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductCategory
	FROM	ProductCategory
	Where Bakery=1 OR Seafood=1)

UNION

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductStore
	FROM	ProductStore
	Where Location='Kültür' OR Location='Meltem')


/* UNION ALL: Retrieve Person First and Last Name of Employees work as Cashier, as well as sells the packaged products.’
gender.*/

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where JobTitle='Cashier')

UNION ALL

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where EmployeeID IN(
		Select EmployeeIDToProduct
		From  Product
		Where ProductType='Packaged'))

/* UNION ALL: Retrieve Product's Name of Where product category is bakery, as well as Location is Kültür or Meltem.*/

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductCategory
	FROM	ProductCategory
	Where Bakery=1 OR Seafood=1)

 UNION ALL

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductStore
	FROM	ProductStore
	Where Location='Kültür' OR Location='Meltem')


/* INTERSECT: Retrieve Person First and Last Name of Employees work as Cashier, which sells the packaged products.’
gender.*/

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where JobTitle='Cashier')

INTERSECT

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where EmployeeID IN(
		Select EmployeeIDToProduct
		From  Product
		Where ProductType='Packaged'))

/* INTERSECT: Retrieve Product's Name of Where product category is bakery, with Location is Kültür or Meltem.*/

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductCategory
	FROM	ProductCategory
	Where Bakery=1 OR Seafood=1)

 INTERSECT

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductStore
	FROM	ProductStore
	Where Location='Kültür' OR Location='Meltem')

/* EXCEPT: Retrieve Person First and Last Name of Employees work as Cashier, without the products have a price is greater than 20 .’
gender.*/

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where JobTitle='Cashier')

EXCEPT

Select FirstName,LastName
From Person
Where SSNO IN(
	SELECT EmployeeSSNO
	FROM	Employee
	Where EmployeeID IN(
		Select EmployeeIDToProduct
		From  Product
		Where Price > 20))

/* EXCEPT: Retrieve Product's Name of Where product category is bakery, without Location is Kültür or Meltem.*/

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductCategory
	FROM	ProductCategory
	Where Bakery=1 OR Seafood=1)

 EXCEPT

Select ProductName
From Product
Where ProductID IN(
	SELECT ProductIDToProductStore
	FROM	ProductStore
	Where Location='Kültür' OR Location='Meltem')



--Q10

/*Check if the DOB of a Person is NULL. If it is Return it as 0.*/
/*ISNULL: Query1*/

SELECT ISNULL(DOB, CONVERT( INT, 0)) AS DOB
FROM Person

/*Check if the Managersalary of a Manager is NULL. If it is, Return it as 0.*/
/*ISNULL: Query2*/
SELECT ISNULL(ManagerSalary, CONVERT( INT, 0)) AS ManagerSalary
FROM Manager


/*Check if the DOB of a Person is NULL. If it is Return it as 0.*/
/*Query1*/

Select COALESCE(DOB, CONVERT( INT, 0)) AS DOB
From Person

/*Check if the Managersalary of a Manager is NULL. If it is, Return it as 0.*/
/*Query2*/

Select COALESCE(ManagerSalary, CONVERT( INT, 0)) AS ManagerSalary
From Manager


/*Check if the DOB of a Person is NULL. If it is Return it as 0.*/

/*Query1*/
Select 
	CASE	
		When DOB IS NULL THEN 0
		ELSE CAST(DOB AS NVARCHAR(15))
	END
From Person

/*Check if the Managersalary of a Manager is NULL. If it is, Return it as 0.*/
/*Query2*/

Select 
	CASE	
		When ManagerSalary IS NULL THEN 0
		ELSE CAST(ManagerSalary AS NVARCHAR(15))
	END
From Manager



