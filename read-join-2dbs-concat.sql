-- Join View Employee/Job showing salary
-- Sorting by Salary and last Name
select concat(Lastname, ', ', Firstname) as 'Name', Description, FORMAT(Salary, 'C', 'en-us') as 'Salary'  
from Employee
join Job
	on JobId = Job.Id
where not((Description = 'VP') or (Salary > 100000)) 
order by Job.Salary desc, name desc;