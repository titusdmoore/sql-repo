/* create table Bootcamps (
	Id int Primary key identity(1, 1),
	BootcampName nvarchar(80)
);

insert into Bootcamps (BootcampName)
values ('.Net'), 
('Java')

Alter table students 
	add BootcampId int null
		foreign key references Bootcamps(Id);
*/
