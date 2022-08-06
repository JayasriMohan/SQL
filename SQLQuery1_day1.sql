create database js
use js
truncate table hakuna
select * from hakuna
insert into hakuna(Name, Age, Salary, Place) values ('jayasri',21,25000,'Pattukkottai'),('Nithyasri',22,30000,'Pattukkottai')
insert into hakuna(Name, Age, Salary, Place) values ('Vicky',27,55000,'Thanjavur'),('Ajisha',38,35000,'Kanniyakumari'),('Uma',21,45000,'Chennai')
update hakuna set Place = 'Marthandam' where Name = 'Ajisha'
alter table hakuna add mobile varchar(10)
select * from hakuna where Salary between 25000 and 45000
select * from hakuna where Salary > 25000
select * from hakuna where Salary < 45000
select * from hakuna where Salary = 25000
select * from hakuna where Salary >= 25000
select * from hakuna where Salary <= 45000
select * from hakuna where Name like '%i'
select * from hakuna where Place like 'M%'
select * from hakuna where Name like '_i%'
select distinct Place from hakuna
select * from hakuna where name = 'jayasri'
ALTER TABLE hakuna DROP COLUMN mobile
sp_rename 'hakuna.EName', 'Name', 'COLUMN'
update hakuna set Name = 'Jayasri' where Name ='jayasri'
Delete from hakuna where Name = 'Uma'
select * from hakuna where Place IN ('Pattukkottai')
alter database js Modify Name = JS
create schema trainee
create table SchemaDemo(id int)
create table trainee.SchemaDemo(id int)
drop table trainee.SchemaDemo
drop schema if exists trainee
select * from trainee.SchemaDemo









