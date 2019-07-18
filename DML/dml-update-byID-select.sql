-- Change all employees that have the job id of Asst director to have the job id of Director
update Employee
	set JobId = 3
	where JobId = 4 
select * from Employee
	order by JobId