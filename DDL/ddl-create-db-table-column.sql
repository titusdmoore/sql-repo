-- Create Database BootampDb;
--Change into new db

/*Create Table Students (
	Id int not null Primary key identity(1, 1),
	Lastname nvarchar(20) not null,
	Firstname nvarchar(50) not null,
	Email nvarchar(255) null,
	Phonenumber nvarchar(10),
	DateEnrolled DateTime not null default getdate(),
);

*/
insert into Students (Firstname, Lastname, Email, Phonenumber)
values ('Alex', 'Chan', 'frozenchanana@gmail.com', '5135605531'),
('Briana', 'Presley', 'presley.briana@gmail.com', '5132549807'),
('Brailee', 'Begley', 'brail33na11@gmail.com', '5134351173'),
('Glenn', 'Lindmark', 'lindmark421@gmail.com', '5134849323'),
('Jesse', 'Kyle', 'jkylecarpentry@gmail.com', '5136551990'),
('Maggie', 'Schutzman', 'maggieschutzman@gmail.com', '8594797837'),
('Marianne', 'Lardos', 'mlinardos.edu@gmail.com', '5137858178'),
('Titus', 'Moore', 'tmoore@edgewebware.com', '9374741083')

select * from Students