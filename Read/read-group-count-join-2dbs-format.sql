--Jobs Grouped by Description sorted by sum of Salary
select Description, COUNT(*) as 'Count',  FORMAT(SUM(Salary), 'C') as 'Total Salary' 
from Employee
join Job
	on JobId = Job.Id
-- Gets the count of the uses in a category instead of db as a whole
Group by Description
--Replacement for where for group by
Having SUM(salary) <= 250000
order by 'Total Salary' desc;