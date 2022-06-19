Insert Into Person 
	Values(001, 1998, 'Female', 'Almira', 'Ölçer')
Insert Into Person 
	Values(002, 1999, 'Male', 'Turgay', 'Özdemir')
Insert Into Person 
	Values(003, 1996, 'Male', 'Mustafa', 'Karataþ')
Insert Into Person 
	Values(004, 2000, 'Male', 'Berkay', 'Yay')
Insert Into Person 
	Values(005, 1999, 'Female', 'Asena', 'Keskes')
Insert Into Person 
	Values(006, 1999, 'Male', 'Onur', 'Baðcý')
Insert Into Person 
	Values(007, NULL, 'Female', 'Sueda', 'Arýcý')
Insert Into Person 
	Values(008, 2000, 'Female', 'Ecem', 'Varlý')
Insert Into Person 
	Values(009, 1997, 'Female', 'Afife', 'Altýnkaya')
Insert Into Person 
	Values(0010, 1999, 'Female', 'Faize', 'Ertürk')
Insert Into Person 
	Values(0011, 1999, 'Female', 'Melike', 'Çoban')
Insert Into Person 
	Values(0012, 1998, 'Female', 'Hatice', 'Demir')
Insert Into Person 
	Values(0013, 1997, 'Female', 'Senem', 'Ýspir')
Insert Into Person 
	Values(0014, 1997, 'Female', 'Ýrem', 'Ýspir')
Insert Into Person 
	Values(0015, NULL, 'Female', 'Ecehan', 'Yurdaer')
Insert Into Person 
	Values(0016, 1999, 'Male', 'Umutcan', 'Ölçer')
Insert Into Person 
	Values(0017, 1994, 'Female', 'Merve', 'Bircan')
Insert Into Person 
	Values(0018, 1999, 'Female', 'Senem', 'Çatak')
Insert Into Person 
	Values(0019, 1998, 'Male', 'Kaan', 'Fural')
Insert Into Person 
	Values(0020, 1998, 'Female', 'Fatma', 'Güçlü')
Insert Into Person 
	Values(0021, 1999, 'Male', 'Batuhan', 'Daðlý')
Insert Into Person 
	Values(0022, 1999, 'Female', 'Elif', 'Karaer')
Insert Into Person 
	Values(0023, 1997, 'Female', 'Simay', 'Tekin')
Insert Into Person 
	Values(0024, 1999, 'Female', 'Selin', 'Kayacan')
Insert Into Person 
	Values(0025, NULL, 'Female', 'Ece', 'Apak')
Insert Into Person 
	Values(0026, 1998, 'Male', 'Emir', 'Cirit')
Insert Into Person 
	Values(0027, 1997, 'Male', 'Safa', 'Berlin')
Insert Into Person
	Values(0028, 1998, 'Male', 'Haþim', 'Halbauer')



Insert Into Customer
	Values(005)
Insert Into Customer
	Values(007)
Insert Into Customer
	Values(0010)
Insert Into Customer
	Values(0011)
Insert Into Customer
	Values(0016)
Insert Into Customer
	Values(0018)
Insert Into Customer
	Values(0021)
Insert Into Customer
	Values(0023)
Insert Into Customer
	Values(0026)
Insert Into Customer
	Values(0027)


Insert Into Employee
	Values(101, 003, 7750, 2018, 'Butcher')
Insert Into Employee 
	Values(102, 008, 6500, 2021, 'Bakery')
Insert Into Employee (EmployeeID, EmployeeSSNO,HireDate, JobTitle)
	Values(103, 009, 2021, NULL)
Insert Into Employee 
	Values(104, 0014, 6800 , 2012, 'Cashier')
Insert Into Employee 
	Values(105, 0017, 5540, 2017, 'Cashier')
Insert Into Employee 
	Values(106, 0019, 4890, 2017, 'Bakery')
Insert Into Employee 
	Values(107, 0020, 7725, 2006, 'Cashier')
Insert Into Employee (EmployeeID, EmployeeSSNO,HireDate, JobTitle)
	Values(108, 0024, NULL, 'Butcher')
Insert Into Employee 
	Values(109, 0025, 5900, 2020, NULL)
Insert Into Employee
	Values(110, 0028, 6800, 2020, 'Butcher')




Insert Into Manager
	Values(201,001,10000)

Insert Into Manager
	Values(202,002,9800)

Insert Into Manager (ManagerID,ManagerSSNO)
	Values(203,004)

Insert Into Manager
	Values(204,006,9750)

Insert Into Manager
	Values(205,0012,NULL)

Insert Into Manager
	Values(206,0013,8980)

Insert Into Manager (ManagerID,ManagerSSNO)
	Values(207,0015)
	
Insert Into Manager
	Values(208,0022,8460)

Insert Into Product
	Values(001,'Bread','NonPackaged',13,005,102)

Insert Into Product
	Values(002,'Cake','NonPackaged',36,0011,106)

Insert Into Product
	Values(003,'Cookie','NonPackaged',23,0021,109)

Insert Into Product
	Values(004,'Donut','NonPackaged',19,0018,102)

Insert Into Product
	Values(005,'Cupcake','NonPackaged',21,007,109)

Insert Into Product
	Values(101,'Meatball','NonPackaged',57,0011,101)

Insert Into Product
	Values(102,'Beaf','NonPackaged',76,005,108)

Insert Into Product
	Values(201,'Anchovy','NonPackaged',43,0010,110)

Insert Into Product
	Values(202,'Salmon','NonPackaged',52,0011,108)

Insert Into Product
	Values(301,'Milk','Packaged',8,0026,103)

Insert Into Product
	Values(302,'Chocolate','Packaged',7,0027,104)

Insert Into Product
	Values(303,'Chips','Packaged',9,007,105)

Insert Into Product
	Values(304,'Cheese','Packaged',18,005,107)

Insert Into Product
	Values(401,'Pepper','NonPackaged',5,007,104)

Insert Into Product
	Values(402,'Tomato','NonPackaged',6,0010,103)

Insert Into Product
	Values(403,'Eggplant','NonPackaged',10,0018,107)

Insert Into Product
	Values(501,'Orange','NonPackaged',7,0023,105)

Insert Into Product
	Values(502,'Strawberry','NonPackaged',29 ,0021,103)

Insert Into Product
	Values(601,'Pizza','Packaged',31,0016,104)

Insert Into Product
	Values(602,'Spinach','Packaged',25,007,107)




Insert Into Payment
	Values(10002,'tl','Cash',005,102)

Insert Into Payment
	Values(20003,'euro','Cash',0011,106)

Insert Into Payment
	Values(20004,'euro','Cash',0021,109)

Insert Into Payment
	Values(20005,'euro','Card',0018,102)

Insert Into Payment(PaymentID, PaymentType, CustomerSSNO, EmployeeID)
	Values(10006,'Card',007,109)

Insert Into Payment
	Values(30007,'dolar','Cash',0011,101)

Insert Into Payment
	Values(10008,'tl','Card',005,108)

Insert Into Payment
	Values(30009,'dolar','Card',0010,110)

Insert Into Payment
	Values(30010,'dolar','Card',0011,108)

Insert Into Payment
	Values(20011,'euro','Cash',0026,103)

Insert Into Payment
	Values(30012,'dolar','Card',0027,104)

Insert Into Payment
	Values(10013,'tl','Cash',007,105)

Insert Into Payment
	Values(10014,'tl','Card',005,107)

Insert Into Payment
	Values(10015,'tl','Cash',007,104)

Insert Into Payment
	Values(20016,'euro','Card',0010,103)

Insert Into Payment
	Values(30017,'dolar','Card',0018,107)

Insert Into Payment
	Values(20018,'euro','Card',0023,105)

Insert Into Payment
	Values(10019,'tl','Cash',0021,103)

Insert Into Payment
	Values(30020,'dolar','Card',0016,104)

Insert Into Payment(PaymentID, PaymentType, CustomerSSNO, EmployeeID)
	Values(10021,'Cash',007,107)


Insert Into ProductStore
	Values(1, 1111111, 'Meltem', 001 , 201)

Insert Into ProductStore
	Values(2, 2222222, 'Kepez', 002 , 203)

Insert Into ProductStore
	Values(3, 3333333, 'Iþýklar', 003 , 202)

Insert Into ProductStore
	Values(4, 4444444, 'Dedeman', 004 , 208)

Insert Into ProductStore
	Values(5, 5555555, 'Dokuma', 005, 205)

Insert Into ProductStore
	Values(6, 6666666, 'Kültür', 101 , 207)

Insert Into ProductStore
	Values(7, 7777777, 'Meltem', 102 , 202)

Insert Into ProductStore
	Values(8, 8888888, 'Lara', 201 , 204)

Insert Into ProductStore
	Values(9, 9999999, 'Dedeman', 202 , 207)

Insert Into ProductStore
	Values(10, 1010101, 'Hurma', 301 , 206)

Insert Into ProductStore
	Values(11, 1101101, 'Döþemealtý', 302 , 201)

Insert Into ProductStore
	Values(12, 1212121, 'Kepez', 303 , 205)
	
Insert Into ProductStore
	Values(13, 1313131, 'Lara', 304, 202)

Insert Into ProductStore
	Values(14, 1414141, 'Kültür', 401 , 206)

Insert Into ProductStore
	Values(15, 1515151, 'Hurma', 402 , 203)

Insert Into ProductStore
	Values(16, 1616161, 'Iþýklar', 403 , 202)

Insert Into ProductStore
	Values(17, 1717171, 'Güllük', 501 , 207)

Insert Into ProductStore
	Values(18, 1818181, 'Döþemealtý', 502 , 204)

Insert Into ProductStore
	Values(19, 1919191, 'Güllük', 601 , 206)

Insert Into ProductStore
	Values(20, 2020202, 'Dokuma', 602 , 201)




	Insert Into ProductStock
	Values(1000, 500, 001 , 1)

Insert Into ProductStock
	Values(2000, 500,  002 , 2)

Insert Into ProductStock
	Values(3000, 405,  003 , 3)

Insert Into ProductStock
	Values(4000, 0,  004 , 4)

Insert Into ProductStock
	Values(5000, 200,  005, 5)

Insert Into ProductStock
	Values(6000, 0,  101 , 6)

Insert Into ProductStock
	Values(7000, 646,  102 , 7)

Insert Into ProductStock
	Values(8000, 730,  201 , 8)

Insert Into ProductStock
	Values(9000, 954,  202 , 9)

Insert Into ProductStock
	Values(1001, 210,  301 , 10)

Insert Into ProductStock
	Values(1100, 539,  302 , 11)

Insert Into ProductStock
	Values(1200, 789,  303 , 12)
	
Insert Into ProductStock
	Values(1300, 0,  304, 13)

Insert Into ProductStock
	Values(1400, 104,  401 , 14)

Insert Into ProductStock
	Values(1500, 55,  402 , 15)

Insert Into ProductStock
	Values(1600, 76,  403 , 16)

Insert Into ProductStock
	Values(1700, 945,  501 , 17)

Insert Into ProductStock
	Values(1800, 457,  502 , 18)

Insert Into ProductStock
	Values(1900, 783,  601 , 19)

Insert Into ProductStock
	Values(20000, 478,  602 , 20)



Insert Into DeliveryCompany
	Values(1, 'ArasKargo', 1000001, 1 , 202)

Insert Into DeliveryCompany
	Values(2, 'YurticiKargo', 2000002, 2, 204)

Insert Into DeliveryCompany
	Values(3, 'MNGKargo', 3000003, 3 , 208)

Insert Into DeliveryCompany
	Values(4, 'SüratKargo', 4000004, 4 , 201)

Insert Into DeliveryCompany
	Values(5, 'PTTKargo', 5000005, 5, 203)

Insert Into DeliveryCompany
	Values(6, 'UPSKargo', 6000006, 6, 205)

Insert Into DeliveryCompany
	Values(7, 'KargoTürk', 7000007, 7 , 207)

Insert Into DeliveryCompany
	Values(8, 'GitKargo', 8000008, 8 , 202)

Insert Into DeliveryCompany
	Values(9, 'AyKargo', 9000009, 9 , 207)

Insert Into DeliveryCompany
	Values(10, 'ÝyiKargo', 0100010, 10 , 203)

Insert Into DeliveryCompany
	Values(11, 'ArasKargo', 1000001, 20 , 201)

Insert Into DeliveryCompany
	Values(12, 'YurticiKargo', 2000002, 19 , 208)

Insert Into DeliveryCompany
	Values(13, 'MNGKargo', 3000003, 18 , 206)

Insert Into DeliveryCompany
	Values(14, 'SüratKargo', 4000004, 17 , 204)

Insert Into DeliveryCompany
	Values(15, 'YurticiKargo', 2000002, 16 , 201)

Insert Into DeliveryCompany
	Values(16, 'UPSKargo', 6000006, 15 , 204)

Insert Into DeliveryCompany
	Values(17, 'MNGKargo', 3000003, 14 , 207)

Insert Into DeliveryCompany
	Values(18, 'MNGKargo', 3000003, 13 , 208)

Insert Into DeliveryCompany
	Values(19, 'AyKargo', 9000009, 12 , 202)

Insert Into DeliveryCompany
	Values(20, 'YurticiKargo', 2000002, 11 , 205)


Insert Into ProductCategory
	Values(1000, 0, 0, 0, 0, 0, 1, 0, 0, 1)

Insert Into ProductCategory
	Values(1001, 0, 0, 0, 0, 0, 1, 0, 0, 2)

Insert Into ProductCategory
	Values(1002, 0, 0, 0, 0, 0, 1, 0, 0, 3)

Insert Into ProductCategory
	Values(1003, 0, 0, 0, 0, 0, 1, 0, 0, 4)

Insert Into ProductCategory
	Values(1004, 0, 0, 0, 0, 0, 1, 0, 0, 5)

Insert Into ProductCategory
	Values(2001, 1, 0, 0, 0, 0, 0, 0, 0, 101)

Insert Into ProductCategory
	Values(2002, 1, 0, 0, 0, 0, 0, 0, 0, 102)

Insert Into ProductCategory
	Values(3001, 0, 1, 0, 0, 0, 0, 0, 0, 201)

Insert Into ProductCategory
	Values(3002, 0, 1, 0, 0, 0, 0, 0, 0, 202)

Insert Into ProductCategory
	Values(4001, 0, 0, 1, 0, 0, 0, 0, 0, 301)

Insert Into ProductCategory
	Values(5001, 0, 0, 0, 0, 0, 0, 1, 0, 302)

Insert Into ProductCategory
	Values(5002, 0, 0, 0, 0, 0, 0, 1, 0, 303)

Insert Into ProductCategory
	Values(6001, 0, 0, 1, 0, 0, 0, 0, 0, 304)

Insert Into ProductCategory
	Values(7001, 0, 0, 0, 1, 0, 0, 0, 0, 401)

Insert Into ProductCategory
	Values(7002, 0, 0, 0, 1, 0, 0, 0, 0, 402)

Insert Into ProductCategory
	Values(7003, 0, 0, 0, 1, 0, 0, 0, 0, 403)

Insert Into ProductCategory
	Values(8001, 0, 0, 0, 0, 1, 0, 0, 0, 501)

Insert Into ProductCategory
	Values(8002, 0, 0, 0, 0, 1, 0, 0, 0, 502)

Insert Into ProductCategory
	Values(9001, 0, 0, 0, 0, 0, 0, 1, 0, 601)

Insert Into ProductCategory
	Values(9500, 0, 0, 0, 1, 0, 0, 1, 0, 602)


Insert Into Has
	Values(1,1000)

Insert Into Has
	Values(2,2000)

Insert Into Has
	Values(3,3000)

Insert Into Has
	Values(4,4000)

Insert Into Has
	Values(5,5000)

Insert Into Has
	Values(101,6000)

Insert Into Has
	Values(102,7000)

Insert Into Has
	Values(201,8000)

Insert Into Has
	Values(202,9000)

Insert Into Has
	Values(301,1001)

Insert Into Has
	Values(302,1100)

Insert Into Has
	Values(303,1200)

Insert Into Has
	Values(304,1300)

Insert Into Has
	Values(401,1400)

Insert Into Has
	Values(402,1500)

Insert Into Has
	Values(403,1600)

Insert Into Has
	Values(501,1700)

Insert Into Has
	Values(502,1800)

Insert Into Has
	Values(601,1900)

Insert Into Has
	Values(602,20000)




Insert Into Contain
	Values(1,1000)

Insert Into Contain
	Values(2,1001)

Insert Into Contain
	Values(3,1002)

Insert Into Contain
	Values(4,1003)

Insert Into Contain
	Values(5,1004)

Insert Into Contain
	Values(101,2001)

Insert Into Contain
	Values(102,2002)

Insert Into Contain
	Values(201,3001)

Insert Into Contain
	Values(202,3002)

Insert Into Contain
	Values(301,4001)

Insert Into Contain
	Values(302,5001)

Insert Into Contain
	Values(303,5002)

Insert Into Contain
	Values(304,6001)

Insert Into Contain
	Values(401,7001)

Insert Into Contain
	Values(402,7002)

Insert Into Contain
	Values(403,7003)

Insert Into Contain
	Values(501,8001)

Insert Into Contain
	Values(502,8002)

Insert Into Contain
	Values(601,9001)

Insert Into Contain
	Values(602,9500)