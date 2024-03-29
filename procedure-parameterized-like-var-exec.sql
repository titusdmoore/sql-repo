USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Job_List]    Script Date: 7/18/2019 10:16:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Employee_Job_List]
	@search nvarchar(30)
AS 
Begin
	Set @search = CONCAT('%', @search, '%');
	select CONCAT(e.Lastname, ', ', e.Firstname) as 'Name', j.description as 'Job',
		format(j.Salary, 'C') as 'Salary' 
	from Employee e
	join Job j
		on j.ID = e.JobId
		where e.Lastname like @search or e.Firstname like @search or j.Description like @search
	order by Name;
End
GO
EXEC Employee_Job_List 'Ad'; --Display Results from Script
GO