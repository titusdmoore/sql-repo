declare @index int = 0;
Declare @sum int = 0;

while @index <= 15
	begin
		set @sum = @sum + @index;
		set @index = @index + 1;
	End
Print 'The sum of 1 to  15 is ' + Cast(@sum as nvarchar(10));
--Cast converts data types
--Ussage
--		CAST('Value' as <data type>) 