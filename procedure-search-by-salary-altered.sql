USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Salary_Search]    Script Date: 7/18/2019 11:57:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[Salary_Search]
@search int
As 
Begin
	select CONCAT(e.Firstname, ', ', e.Lastname) as 'Name', j.Description, Format(j.Salary, 'C') as 'Salary'
	from Employee e
	join Job j
	on j.Id = JobId
	where j.Salary >= @search
	order by Salary desc;
End
