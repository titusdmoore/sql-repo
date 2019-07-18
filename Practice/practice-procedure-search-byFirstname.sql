create procedure First_Name
	@first nvarchar(30)
as
Begin
	Set @first = CONCAT('%', @first, '%')
	select Firstname from Employee
		where Firstname like @first
End