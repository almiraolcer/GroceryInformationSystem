# GroceryInformationSystem
The Grocery Information System is a project that I build during the course Database Management Systems and Applications using Microsoft SQL Server. 

The main idea of the project is to keep the data of a Grocery such as Person, Customer, 
Employee, Manager, Product, ProductCategory, Payment, Product Stock, Product Store,
Delivery Company. 

To give more details,
The Grocery Information System Database should record information about the Person, Manager,Employee,Customer, Product, Product Stock, Product Store, Delivery Company. Persons are being formed from SSNo, DOB, Gender, FirstName and LastName. Person is split into three types Customer, Employee and Manager. Customers buys Products. And make payment. Payments are formed with paymentID(unique), Currency and PaymentType. Each Employee has EmployeeSalary, JobTitle, HireDate and a unique EmployeeID and each manager has unique ManagerID.They also have ManagerSalary. And employees provide Products. Products are being formed with ProductID (unique), ProductName,ProductType and Price. Product contain Product Category. ProductCategory are being formed with CategoryID(unique) ,Meat, Seafood, Diary, Vegetables, Fruits, Bakery, FrozenSection and Snacks. Products has ProductStock. And they are being formed with StockID(unique) and StockNumber. Product Stocks are rectocked from Product store. Product Stores are being formed with StoreNo(unique), PhoneNumber and Location. Manager orders new products from Product Store. And then, Product Store Sends order to Delivery Company. Delivery Company is being formed with DelCompID, CompanyName, PhoneNumber. Delivery Company brings order to Manager.
