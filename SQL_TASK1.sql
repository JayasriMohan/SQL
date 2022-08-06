create database ORG

use ORG

CREATE TABLE Worker (Worker_id int not null primary key , First_name varchar(20),Last_name varchar(20),Salary int,Joining_data datetime,
Department varchar(20))

INSERT INTO Worker VALUES
		(101, 'Jayasri', 'Mohan', 80000, '08-05-2020 05:39:00', 'Admin'),
		(102, 'Nithyasri', 'Mohan', 300000, '08-05-2020 05:39:00', 'HR'),
		(103, 'Vigneshwaran', 'Mohan', 500000, '08-05-2020 05:39:00', 'Admin'),
		(104, 'Vignesh', 'Rajasekar', 500000, '08-05-2020 05:39:00', 'Admin'),
		(105, 'Ajisha', 'Rajaraj', 200000, '08-05-2020 05:39:00', 'Account'),
		(106, 'Uma', 'Ezhumaalai', 75000, '08-05-2020 05:39:00', 'Account'),
		(107, 'Sowmiya', 'Khajendran', 90000, '08-05-2020 05:39:00', 'Admin')

select * from Worker

create table Bonus (Worker_Ref_id int,Bonus_Amount int,Bonus_Date datetime ,Foreign key(Worker_Ref_id)
REFERENCES Worker(Worker_id)On DELETE Cascade) 

INSERT INTO Bonus 
	(Worker_Ref_id, Bonus_Amount, Bonus_Date) VALUES
		(101, 5000, '08-05-2020'),
		(102, 3000, '08-06-2020'),
		(103, 4000, '08-07-2020'),
		(104, 4500, '08-08-2020'),
		(105, 3500, '08-09-2020')

CREATE TABLE Title (
	Worker_Ref_id INT,
	Worker_Title CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (Worker_Ref_id)
		REFERENCES Worker(Worker_Id)
        ON DELETE CASCADE
)

INSERT INTO Title 
	(Worker_Ref_id, Worker_Title, Affected_From) VALUES
 (101, 'Manager', '08-02-2020 05:39:00'),
 (102, 'Executive', '08-05-2020 05:39:00'),
 (103, 'Executive', '08-05-2020 05:39:00'),
 (104, 'Manager', '08-05-2020 05:39:00'),
 (105, 'Asst. Manager', '08-05-2020 05:39:00'),
 (106, 'Executive', '08-05-2020 05:39:00'),
 (107, 'Lead', '08-05-2020 05:39:00'),
 (108, 'Lead', '08-05-2020 05:39:00')

 select First_name as WORKER_NAME from Worker
 select UPPER(first_name) as UpperName FROM Worker
 select distinct Department from Worker
 select SUBSTRING(First_name, 1, 3)FROM Worker
 select * from Worker where Department = 'Admin'
 select * from Worker where First_name like '%a'
 select * from Worker where First_name like '%a%'
 select * from Worker where First_name IN ('Uma', 'Ajisha')
 select distinct len(Department) from worker
 select CONCAT(First_name,'  ', Last_name) as Complete_name FROM Worker
 



