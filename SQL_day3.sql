use JS
select * from hakuna
alter table hakuna alter column Salary int

--AGGREGATE FUNCTIONS

select avg(Salary) as Average_Salary from hakuna
select min(Salary) as Minimum_Salary from hakuna
select max(Salary) as Maximum_Salary from hakuna
select count(Salary) as Count_Salary from hakuna
select sum(Salary) as Sum_Salary from hakuna

--group by clause

select avg(Salary) as Average_Salary, place from hakuna	 group by Place

--having clause
 
select avg(Salary) as Average_Salary, Place from hakuna	 group by Place having Place = 'Pattukkottai'

--order by clause

select * from hakuna order by Age

--synonym

create synonym HM for hakuna
select * from HM
select * from hakuna

--drop synonym

drop synonym if exists HM

-- join
 create table employees(Id int primary key,DepartmentName varchar(20),Elocation varchar(20),DepartmentHead varchar(20))
 insert into employees values(1,'IT','London','Jay'),(2,'Payroll','Delhi','Nithya'),(3,'HR','NewYork','Ajisha'),(4,'Testing','Sydney','Sri')
--EXEC sp_rename 'employees', 'Department'
select * from Department
select * from Employees
create table Employees(Id int primary key,Name varchar(20),Gender varchar(10),Salary int,DepartmentId int foreign key references Department(Id))
INSERT into Employees values(1,'Tom','Male',4000,1),(2,'Jerry','Male',3000,3),(3,'Chutki','Female',3500,1),(4,'Bheem','Male',4500,2),(5,'Dolu','Male',2000,2)
INSERT into Employees values(6,'Indhira','Femle',7000,1),(7,'Suji','Female',3200,3),(8,'Gloria','Female',8500,1),(9,'Heidi','Female',5000,1),(10,'Khalia','Male',2000,3)
select * from Employees
select DepartmentName,Elocation,DepartmentHead,Salary from Department inner join Employees on Employees.Id = Department.Id
select DepartmentName,Elocation,DepartmentHead,Salary from Department join Employees on Employees.Id = Department.Id
select DepartmentName,Elocation,DepartmentHead from Department left join Employees on Employees.Id = Department.Id
select DepartmentName,Elocation,DepartmentHead,Salary from Department right join Employees on Employees.Id = Department.Id
select DepartmentName,Elocation,DepartmentHead,Salary from Department full join Employees on Employees.Id = Department.Id

--identity

create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into sample values('Ram'),('Aji'),('jay'),('Sri')
select * from sample

create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample1 values(NEXT VALUE FOR EMPID,'John')
create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'Cindrella')
insert into sample1 values(NEXT VALUE FOR EMPID,'Tom')

alter sequence empid restart with 1 increment by 1
create table sample2
(
id int primary key ,
name varchar(20)
)
insert into sample2 values(NEXT VALUE FOR EMPID,'Peter')
select * from sample2
insert into sample2 values(NEXT VALUE FOR EMPID,'Paul')
insert into sample2 values(NEXT VALUE FOR EMPID,'John')
insert into sample2 values(NEXT VALUE FOR EMPID,'Cindrella')
insert into sample2 values(NEXT VALUE FOR EMPID,'Tom')

select NEXT VALUE FOR EMPID
select * from Department






