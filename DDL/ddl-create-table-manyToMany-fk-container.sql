/*
 -- The name is usually a Combination of the two table names
create table AssessmentScores (
	Id int not null Primary Key identity(1, 1),

	-- Set Up the foreign keys for the other two tables
	StudentId int not null Foreign Key references Students(Id),
	AssesmentsId int not null Foreign Key references Assessments(Id),

	-- Set Up the field for the number correct to be passed to the other tables
	NbrCorrect int not null
);

-- Insert data and scores for Jane Doe
insert into AssessmentScores (
	StudentId, AssesmentsId, NbrCorrect
)
values (
	1, 1, 6 -- git
);
insert into AssessmentScores (
	StudentId, AssesmentsId, NbrCorrect
)
values (
	1, 2, 9 -- SQL
);
insert into AssessmentScores (
	StudentId, AssesmentsId, NbrCorrect
)
values (
	1, 3, 10 -- C#
);
insert into AssessmentScores (
	StudentId, AssesmentsId, NbrCorrect
)
values (
	1, 4, 10 -- JavaScript
);
insert into AssessmentScores (
	StudentId, AssesmentsId, NbrCorrect
)
values (
	1, 5, 8 -- AngularJS
);
*/
-- Display Scores for Jane Nice and neatly
select Concat(s.Lastname, ', ', s.Firstname) as 'Name', b.bootcampName as 'Course',
				a.Technology, Concat(Cast(((Cast(g.NbrCorrect as Decimal) / Cast(a.NbrQuestions as decimal)) * 100) as int), '%') as 'Score'
	from AssessmentScores g
	Join Assessments a
		on g.AssesmentsID = a.Id
	Join Students s
		on s.Id = g.StudentId
	Join Bootcamps b
		on b.Id = s.BootcampId
Where s.Id = 1;