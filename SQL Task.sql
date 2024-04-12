CREATE DATABASE School
USE School

CREATE TABLE Students(
[Id] INT PRIMARY  KEY IDENTITY(1,1),
[FullName] NVARCHAR(100) not null,
[Email] NVARCHAR(256) UNIQUE
)

INSERT INTO Students([FullName],[Email])
VALUES ('Tofiq Nasibli','tofiq@gmail.com'),
('Haci Ahmedov','haci@code.edu.az'),
('Mariam Aliyeva','mariam@mail.ru')


SELECT substring(Email, 1, CHARINDEX('@',Email)-1)  AS Names FROM Students 
SELECT substring(Email, CHARINDEX('@',Email)+1, len(Email)) AS Emails FROM Students




--------Practice---------
--CREATE TABLE TeacherStudents(
--[Id] INT PRIMARY  KEY IDENTITY(1,1),
--[TeacherId] INT,
--[StudentId] INT,
--foreign KEY (TeacherId) references Teachers(Id),
--foreign KEY (StudentId) references Students(Id)
--)

--select * from TeacherStudents

--select * from Countries co
--inner join Cities ct
--on co.Id = ct.CountryId

--select ct.Name,co.Name from Countries co
--inner join Cities ct
--on co.Id = ct.CountryId


--select co.Name,ct.Name from Countries co
--left join Cities ct
--on co.Id = ct.CountryId

--select ct.Name,co.Name from Countries co
--right join Cities ct
--on co.Id = ct.CountryId


--select co.Name,ct.Name from Countries co
--full join Cities ct
--on co.Id = ct.CountryId

--select * from Students stu
--inner join Cities ct
--on ct.Id = stu.CityId


