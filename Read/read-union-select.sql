select Concat(e.LastName, ', ', e.FirstName) as 'Name', j.Description, 'Yes' as 'Sr. Exec'
from Employee e
Join Job j
	on e.JobId = j.Id
where Description = 'Director' or Description = 'President'
Union
Select Concat(e.LastName, ', ', e.FirstName) as 'Name', j.description, 'No' as 'Sr. Exec'
from Employee e
Join Job j
	on e.JobId = j.Id
where Not(Description = 'Director' or Description = 'President')