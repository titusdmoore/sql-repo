/*update students
	set BootcampId = (
		select Id from Bootcamps
		where BootcampName = '.Net'
	)
	where Lastname = 'Moore' AND Firstname = 'Titus';

	Select * from students
	*/
update students 
	set bootcampId = (
		select Id from Bootcamps
		where BootcampName = '.Net'
	)
	where Not((Firstname ='Jane' or Firstname = 'Titus') AND (Lastname = 'Doe' or Lastname = 'Moore'))

	Select * from students
