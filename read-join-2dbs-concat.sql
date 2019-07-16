select concat(Lastname, ', ', Firstname) as 'Name', Description, FORMAT(Salary, 'C', 'en-us') as 'Salary'  
from Employee
join Job
	on JobId = Job.Id
order by Lastname;
