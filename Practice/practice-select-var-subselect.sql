Declare @id int;
Declare @salary decimal(9,2);

--select id from Job where description = 'Director'
--set @id = 3;

select @id = id, @salary = Salary from Job where description = 'Director'
select @id as 'ID', Format(@salary, 'C') as 'Salary'