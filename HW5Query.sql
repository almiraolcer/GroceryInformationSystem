/*Join Employee and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName*/

Select EmployeeID, EmployeeSalary, JobTitle, FirstName, LastName
From Employee
JOIN Person
ON Person.SSNO= Employee.EmployeeSSNO

/*Join Manager and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName*/

Select ManagerID, ManagerSalary, FirstName, LastName
From Manager
JOIN Person
ON Person.SSNO= Manager.ManagerSSNO

/* Retrieve EmployeeID,ManagerID, Salary, FirstName, Lastname of Manager, Employee and Person
?
?
?*/

Select p1.EmployeeID, p3.ManagerID, p3.ManagerSalary, p1.EmployeeSalary, p2.FirstName, p2.LastName
From Person p2
JOIN Employee p1
ON p2.SSNO = p1.EmployeeSSNO
JOIN Manager p3
ON p2.SSNO=p3.ManagerSSNO


/*Retrieve CustomerSSNO, Customer's FirstName and LastName and what it bought*/
Select ProductName, CustomerSSNO, FirstName, LastName
From Product
JOIN Customer
ON Customer.CustomerSSNO = Product.CustomerSSNOToProduct
JOIN Person
ON Customer.CustomerSSNO = Person.SSNO

/*Retrieve ManagerID,Person's FirstName and LastName and the DeliveryCompany's name that Manager is contacted*/
Select ManagerID, FirstName, LastName, CompanyName
From DeliveryCompany
JOIN Manager
ON DeliveryCompany.ManagerIDToDeliveryCompany=Manager.ManagerID
JOIN Person
ON Manager.ManagerSSNO=Person.SSNO

/*LEFT Join Employee and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName
return the non-matching tuples in the left-relation as well. */

Select EmployeeID, EmployeeSalary, JobTitle, FirstName, LastName
From Employee
LEFT JOIN Person
ON Person.SSNO= Employee.EmployeeSSNO

/* LEFT Join Manager and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName
return the non-matching tuples in the left-relation as well. */

Select ManagerID, ManagerSalary, FirstName, LastName
From Manager
LEFT JOIN Person
ON Person.SSNO= Manager.ManagerSSNO

/*RIGHT Join Employee and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName
return the non-matching tuples in the right-relation as well. */

Select EmployeeID, EmployeeSalary, JobTitle, FirstName, LastName
From Employee
RIGHT JOIN Person
ON Person.SSNO= Employee.EmployeeSSNO

/* RIGHT Join, Manager and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName. 
return the non-matching tuples in the right-relation as well. */

Select ManagerID, ManagerSalary, FirstName, LastName
From Manager
RIGHT JOIN Person
ON Person.SSNO= Manager.ManagerSSNO

/* FULL Join, LEFT + RIGHT JOIN Employee and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName*/

Select EmployeeID, EmployeeSalary, JobTitle, FirstName, LastName
From Employee
FULL JOIN Person
ON Person.SSNO= Employee.EmployeeSSNO

/*FULL Join, LEFT + RIGHT JOIN Manager and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName*/

Select ManagerID, ManagerSalary, FirstName, LastName
From Manager
FULL JOIN Person
ON Person.SSNO= Manager.ManagerSSNO

/* CROSS Join Employee and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName
 cartesian product of two relations.*/

Select EmployeeID, EmployeeSalary, JobTitle, FirstName, LastName
From Employee
CROSS JOIN Person


/*CROSS Join Manager and Person and retrieve EmployeeID, Salary, JobTitle,FirstName and LastName
 cartesian product of two relations.*/

Select ManagerID, ManagerSalary, FirstName, LastName
From Manager
CROSS JOIN Person

/*SELF join of Delivery Company shows the Nonequal DeliveryCompanyIDs that has same CompanyName*/

SELECT A.DelCompID AS CompanyID1, B.DelCompID AS CompanyID2, A.CompanyName
FROM DeliveryCompany A, DeliveryCompany B
WHERE A.DelCompID <> B.DelCompID
AND A.CompanyName = B.CompanyName
ORDER BY A.CompanyName

/*SELF join of Delivery Company shows the Nonequal DeliveryCompanyIDs that has same CompanyName*/

SELECT A.ProductName AS ProductName1, B.ProductName AS ProductName2, A.EmployeeIDToProduct
FROM Product A, Product B
WHERE A.ProductName <> B.ProductName
AND A.EmployeeIDToProduct = B.EmployeeIDToProduct
ORDER BY A.EmployeeIDToProduct


