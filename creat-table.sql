CREATE DATABASE TQLBOOTCAMP;

Use TQLBOOTCAMP;
go

CREATE TABLE Students (
	Id int not null primary key identity(1,1),
	FirstName varchar(30) not null,
	LastName varchar(30) not null, 
	Cellphone varchar(15),
	DateOfBirth DateTime not null,
	Active bit not null default 1 
);
go

SELECT *
	from Students 

INSERT into Students 
	(FirstName, Lastname, Cellphone, DateOfBirth, Active)
	VALUES
		('Angelica', 'Bufano', '770-856-4820', '1995-02-07', 1),
		('Emma', 'Smith', '123-456-7890', '1999-01-11', 0),
		('Bobby', 'Jones', '999-444-777', '1982-08-21', 1);
go

SELECT *
	from Students

DELETE
	from Students
	Where id in (4,5,6,7,8,9)

SELECT Id, Firstname 'First Name', Lastname 'Last Name', Cellphone, DateofBirth 'Date of Birth', Active
	from Students

CREATE TABLE Assignments (
	Id int not null primary key identity(10,10),
	Name varchar(50) not null,
	Score int not null,
	StudentId int not null foreign key references Students(Id)
);
go

SELECT *
	From Assignments 

INSERT Assignments
	(Name, Score, StudentId)
	VALUES
	('Git/GitHub Assessment', 100, (SELECT Id
		from Students
		Where FirstName = 'Angelica'))
go

Select a.*, concat(s.FirstName, ' ', s.LastName) Name
	from Assignments a 
	join Students s
		on s.Id = a.StudentId
	