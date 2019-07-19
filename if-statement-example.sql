Declare @job nvarchar(30) = 'e;kjf';

if Exists(select id from job 
where Description = @job)
	Begin
		Print 'That job exists'
	End
Else
	Begin
		Print 'That job does not exist'
	End