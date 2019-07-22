--Perfect World Inserts
insert into Users (userName, Password, firstName, lastName, phone, email, IsReviewer, IsAdmin)
values
('tmoore', '123456789', 'Titus', 'Moore', '9374741083', 'titusdmoore@gmail.com', 1, 0);

insert into Users (userName, Password, firstName, lastName, phone, email, IsReviewer, IsAdmin)
values
('jdoe', 'password', 'John', 'Doe', '1234567890', 'jdoe@test.com', 0, 1);

insert into Users (userName, Password, firstName, lastName, phone, email, IsReviewer, IsAdmin)
values
('jdoe123', 'password123', 'Jane', 'Doe', '9876541230', 'jdoe123@test.com', 0, 1);

-- Testing Inserts
insert into Users (userName, Password, firstName, lastName, IsReviewer)
values
('cKentSuper', 'supermanRox', 'Clark', 'Kent', 1);

insert into Users (userName, Password, firstName, lastName, phone)
values
('2Flashy', 'fastestman', 'Barry', 'Allen', '9638527410');


insert into Users (userName, Password, firstName, lastName, email, IsReviewer, IsAdmin)
values
('capedCrusader', 'iAMbatman', 'Bruce', 'Wayne', 'bruce.wayne@wayneent.com', 1, 0);


insert into Users (userName, Password, firstName, lastName, IsReviewer, IsAdmin)
values
('firstAvenger', 'IcanDoThisA11Day', 'Steve', 'Rogers', 0, 0);
select * from Users