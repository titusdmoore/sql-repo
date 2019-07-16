--Subselect
select CONCAT(Lastname, ', ', Firstname) as 'Name', Description, format(Salary, 'C') as 'Salary'
from Job
join Employee
	on JobId = Job.Id
where salary > (
				select AVG(salary) as 'Salary'
				from Job
				join Employee
					on JobId = Job.Id
			)
			
order by 'Name';
