
--After Trigger
--DELETE: 
--When a stock is 0, it will be removed my the user. Hence, automatically product will be removed with DeleteStock.

create trigger DeleteStock on ProductStock
for Delete as
begin
declare @productid int
select @productid = ProductIDToProductStock
From deleted
Delete From Product Where ProductID=@productid
End


EXEC sp_helptext 'DeleteStock' ;

Insert Into Product
	Values(603, 'Deneme', 'Packaged', 29 ,11, 107, '2022-10-17')

Insert Into ProductStock
	Values (30000,500,603 , 20)

	delete From ProductStock
where StockID = 30000;


--Instead Of Trigger
--INSTEAD OF DELETE: 
--When a stock is 0, it will be removed my the user. Hence, automatically product will be removed with DeleteStock.

 
Create Trigger tr_NoDeletion
on Payment
instead of delete
as
begin
raiserror('No deletion on payment records',1,1)
rollback transaction
end

EXEC sp_helptext 'tr_NoDeletion' ;

Insert Into Payment	
	Values(30021, 'tl', 'Cash', 10, 105)

Delete From Payment
	where PaymentID = 30021;

