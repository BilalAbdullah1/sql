
use EmplooyeeManagement


create table employees (
EmployeeId int primary key identity(1,1),
FirstName varchar(15) not null,
LastName varchar(15) not null,
DepartmentId int ,
Salary int,
FOREIGN KEY (DepartmentId) REFERENCES Department(DeptID)
)

create table Department(
DeptID int primary key identity(1,1),
dept_name varchar(15))


INSERT INTO Department (dept_name) VALUES ('HR'),('Finance'),('Marketing'),
('Sales'),
('Engineering'),
('Operations'),
('Research'),('Administration');


select * from sys.tables


select * from employees
select * from Department

-- Insert records into the Employees table
INSERT INTO Employees (FirstName, LastName, DepartmentId, Salary) VALUES ('John', 'Dack', 4, 100000);
INSERT INTO Employees (FirstName, LastName, DepartmentId, Salary) VALUES ('Alisa', 'Smith', 4, 80000);
INSERT INTO Employees (FirstName, LastName, DepartmentId, Salary) VALUES ('Breakin', 'Johnson', 4, 65000);
INSERT INTO Employees (FirstName, LastName, DepartmentId, Salary) VALUES ('Steave', 'Brown', 4, 20000);

delete from employees where DepartmentId = 4


update employees set Salary += Salary * 10 / 100 where DepartmentId = 4

select MIN(salary) from employees

delete from employees where salary = (select MIN(salary) from employees);

select * from employees where LastName like  's%'

select * from employees where LastName like '%son'

select * from employees where FirstName like '%an%'

--//Student Table
create table Students (
StudentID int primary key identity(1,1),
FirstName varchar(15),
LastName varchar(15),
Age int,
percentages decimal(5,2),
CourseId int,
foreign key (CourseId) references Courses(CourseID)
)

create table Courses (
CourseID int primary key identity(1,1),
CourseName varchar(20),
Instructor varchar(20)
)

select * from Courses
-- Insert 5 records into the Courses table
INSERT INTO Courses (CourseName, Instructor) VALUES ('Mathematics', 'Prof. Smith');
INSERT INTO Courses (CourseName, Instructor) VALUES ('History', 'Dr. Johnson');
INSERT INTO Courses (CourseName, Instructor) VALUES ('Computer Science', 'Prof. Williams');
INSERT INTO Courses (CourseName, Instructor) VALUES ('English Literature', 'Dr. Davis');
INSERT INTO Courses (CourseName, Instructor) VALUES ('Physics', 'Prof. Brown');

INSERT INTO Students (FirstName, LastName, Age, percentages, CourseID) VALUES ('John', 'Doe', 20, 85.50, 1);
INSERT INTO Students (FirstName, LastName, Age, percentages, CourseID) VALUES ('Alice', 'Smith', 22, 78.75, 2);
INSERT INTO Students (FirstName, LastName, Age, percentages, CourseID) VALUES ('Bob', 'Johnson', 21, 92.00, 3);
INSERT INTO Students (FirstName, LastName, Age, percentages, CourseID) VALUES ('Eva', 'Brown', 23, 88.25, 4);
INSERT INTO Students (FirstName, LastName, Age, percentages, CourseID) VALUES ('Chris', 'Miller', 20, 76.50, 5);


select FirstName,LastName  from Students where percentages = (select max(percentages) from Students)

selce
select 