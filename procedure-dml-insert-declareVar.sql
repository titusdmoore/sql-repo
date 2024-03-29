USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Employee]    Script Date: 7/18/2019 12:19:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[Insert_Employee]
	@firstName nvarchar(30),
	@lastName nvarchar(30),
	@job nvarchar(30)
as
Begin
	declare @jobId int;

	select @jobId = Id from Job 
		where Description = @job;

	insert into Employee (Firstname, Lastname, JobId)
		values (@firstName, @lastName, @jobId)
End
go
exec Insert_Employee @firstName = 'John', @lastName = 'Doe', @job = 'Director'