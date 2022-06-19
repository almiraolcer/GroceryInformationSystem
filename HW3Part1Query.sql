create Database GroceryInformationSystem

CREATE TABLE Person(
	SSNO Int Primary Key Not Null,
	DOB Int,
	Gender Nvarchar(50),
	FirstName Nvarchar(50),
	LastName Nvarchar(10),
	)

CREATE TABLE Customer(
CustomerSSNO Int not null foreign key references Person(SSNO))

CREATE TABLE Employee(
EmployeeID Int Primary Key Not Null,
EmployeeSSNO Int not null foreign key references Person(SSNO),
EmployeeSalary Int DEFAULT 4253 ,
HireDate Int,
JobTitle Nvarchar(50))

CREATE TABLE Manager(
ManagerID Int Primary Key Not Null,
ManagerSSNO Int not null foreign key references Person(SSNO),
ManagerSalary Int DEFAULT 8000 )

CREATE TABLE Product(
ProductID Int Primary Key Not Null , 
ProductName Nvarchar(50),
ProductType Nvarchar(50),
Price Int,
CustomerSSNOToProduct Int not null foreign key references Person(SSNO),
EmployeeIDToProduct Int not null foreign key references Employee(EmployeeID)
)

CREATE TABLE Payment(
PaymentID Int Primary Key Not Null, 
Currency Nvarchar(50) DEFAULT 'tl' , 
PaymentType Nvarchar(50),
CustomerSSNOToPayment Int not null foreign key references Person(SSNO),
EmployeeIDToPayment Int not null foreign key references Employee(EmployeeID) )

CREATE TABLE ProductStore(
StoreNo Int Primary Key Not Null, 
PhoneNumber Int,
Location Nvarchar(50), 
ProductIDToProductStore Int , 
ManagerIDToProductStore Int
)

CREATE TABLE ProductStock(
StockID Int Primary Key Not Null,
StockNumber Int,
ProductIDToProductStock Int not null foreign key references Product(ProductID),
StoreNoToProductStock Int not null foreign key references ProductStore(StoreNo)
)

CREATE TABLE DeliveryCompany(
DelCompID Int Primary Key Not Null,
CompanyName Nvarchar(50),
PhoneNumber Int,
StoreNoToDeliveryCompany Int not null foreign key references ProductStore(StoreNo) ,
ManagerIDToDeliveryCompany Int not null foreign key references Manager(ManagerID)
)

CREATE TABLE ProductCategory(
CategoryID Int Primary Key Not Null,
Meat Int,
Seafood Int,
Diary Int,
Vegetables Int,
Fruits Int,
Bakery Int,
FrozenSection Int,
Snacks Int,
ProductIDToProductCategory Int not null foreign key references Product(ProductID)
)

CREATE TABLE Has(
ProductIDToHas int not null foreign key references Product(ProductId),
StockIDToHas int not null foreign key references ProductStock(StockId)

Constraint PK_Product_Stock Primary Key (ProductId,StockId)
)

CREATE TABLE Contain (
ProductIDToContain int not null foreign key references Product(ProductId),
CategoryIDToContain int not null foreign key references ProductCategory(CategoryId)

Constraint PK_Product_Category Primary Key (ProductId,CategoryId)
)




