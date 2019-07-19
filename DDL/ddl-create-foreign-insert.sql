/* create table Assessments (
	Id int Primary key not null identity(1, 1),
	Technology nvarchar(50) not null,
	NbrQuestions int not null
);

create table Technology (
	Id int Primary key not null identity(1, 1),
	TechnologyName nvarchar(50) not null,
	AssessmentId int Foreign key references Assessments(Id) not null
);

create table NbrQuestions (
	Id int not null Primary Key identity(1, 1),
	Number int not null,
	TechnologyId int Foreign Key references Technology(Id) not null
);
*/
insert into Assessments (
	Technology, 
	NbrQuestions
)
Values ('Git', 5),
('SQL', 10),
('C#', 10),
('JavaScript', 10),
('Angular', 10);
select * from assessments;
select * from bootcamps;
select * from students;

