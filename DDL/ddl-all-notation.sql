use Master;
go
Drop database if exists SqlPrs;
go
Create database SqlPrs;
go
use SqlPrs;
go
create table Users (
	Id int Primary Key not null identity(1,1),
	userName nvarchar(30) not null unique,
	Password nvarchar(30) not Null,
	firstName nvarchar(30) not null,
	lastName nvarchar(30) not null,
	phone nvarchar(12) null,
	email nvarchar(255) null,
	IsReviewer bit not null default 1,
	IsAdmin bit not null default 1
);
go
insert into Users (userName, Password, firstName, lastName, IsReviewer, IsAdmin)
	values ('su', 'su', 'Super', 'User', 1, 1)
insert into Users (userName, Password, firstName, lastName, IsReviewer, IsAdmin)
	values ('rv', 'rv', 'Request', 'Viewer', 1, 1)
insert into Users (userName, Password, firstName, lastName, IsReviewer, IsAdmin)
	values ('au', 'au', 'Admin', 'User', 1, 1)
insert into Users (userName, Password, firstName, lastName, IsReviewer, IsAdmin)
	values ('nu', 'nu', 'Normal', 'User', 1, 1)
go
Create table Vendors (
	Id int not null Primary Key identity(1,1),
	Code nvarchar(30) not null unique,
	Name nvarchar(30) not null unique,
	Address nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(2) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12),
	Email nvarchar(255)
);
go
Create Table Products (
	Id int not null Primary Key identity(1,1),
	PartNbr nvarchar(30) not null unique,
	Name nvarchar(30) not null unique,
	Price decimal(11,2) not null,
	Unit nvarchar(30) not null,
	PhotoPath nvarchar(255) null,
	VendorId int not null Foreign Key references Vendors(Id)
);
go
create table Requests (
	Id int not null Primary Key identity(1,1),
	Description nvarchar(80) not null,
	Justification nvarchar(80) not null,
	RejectionReason nvarchar(80) null,
	DeliveryMode nvarchar(20) not null default 'Pickup',
	Status nvarchar(10) not null default 'New',
	Total decimal(11,2) not null default 0,
	UserId int not null Foreign Key references Users(Id)
);
go
insert into Requests (Description, Justification, DeliveryMode, UserId) values ('1st request Assisted', 'Allowed Admin', 'Delivered', 1); 
insert into Requests (Description, Justification, DeliveryMode, UserId) values ('1st request Assisted', 'testing', 'Delivered', 1); 
insert into Requests (Description, Justification, DeliveryMode, UserId) values ('2nd request Assisted', 'Allowed Boss', 'Pickup', 1); 
insert into Requests (Description, Justification, DeliveryMode, UserId) values ('1st request Assisted', 'Allowed for all employees', 'Online', 2); 
insert into Requests (Description, Justification, DeliveryMode, UserId) values ('1st request Assisted', 'Allowed for all employees', 'Delivered', 1);
go
create Table RequestLines (
	Id int Primary Key not null identity(1,1),
	RequestId int not null Foreign Key references Requests(Id),
	ProductId int not null Foreign Key references Products(Id),
	Quantity int not null default 1
);
insert into RequestLines (RequestId, ProductId, Quantity) values (1, 4, 2);
insert into RequestLines (RequestId, ProductId, Quantity) values (4, 1, 5);
insert into RequestLines (RequestId, ProductId, Quantity) values (5, 3, 1);
go