Create Procedure Salary_Search
@search int
As 
Begin
	select CONCAT(e.Firstname, ', ', e.Lastname) as 'Name', j.Description, Format(j.Salary, 'C') as 'Salary'
	from Employee e
	join Job j
	on j.Id = JobId
	where j.Salary >= @search
	order by Name;
End
