use JS
select * from hakuna
select * from hakuna where age=21
select * from Department
create clustered index ix_id on Department(id)
create index ix_Elocation on Department(Elocation)
create unique index ix_DepartmentHead on Department(DepartmentHead
select * from Voting
create trigger trg_insert
on Voting
FOR INSERT
as
begin
	print 'You cannot insert data'
	rollback transaction --undo
end
drop trigger trg_insert

create trigger trg_dml
on Voting
FOR INSERT,UPDATE,DELETE
as
begin
	print 'You cannot perform DML Operations'
	rollback transaction 
end
insert into Voting values(6,'Tom','2001-01-07 12:12:12.567',22,'self-employeed')
update Voting set ID=4 where ID=5
delete from Voting where age=28
select * from Voting
drop trigger trg_dml
disable trigger trg_dml on Voting
enable trigger trg_dml on Voting
select * from dept
select * from batch2

alter trigger trg_dml
on Voting
FOR INSERT,UPDATE,DELETE
as
begin
	if DATEPART(DW,GETDATE())=4 
	begin
		print 'You cannot perform DML Operations on batch2'
		rollback transaction 
	end
end 
 select * from Voting
disable trigger trg_dml on Voting
enable trigger trg_dml on Voting
INSERT INTO Voting VALUES(7,'Jerry','2001-01-07 12:12:12.567',24,'self-employeed')

delete from Voting where id=7

create trigger trg_inserted
on Voting
for insert
as 
begin 
	 -- trigger table
end

select * from hakuna

insert into batselect * from insertedch1 values(11,'Lee','79866989','Admin',20000)

select * from batch2
INSERT INTO BATCH2 VALUES(4,'Jamie',25000)

create trigger trg_deleted
on batch2
for delete
as 
begin 
	select * from deleted -- trigger table
end

delete from batch2 where id=1

create trigger trg_update
on batch2
for update
as 
begin 
    select * from inserted
	select * from deleted -- trigger table
end

update batch2 set name='Lea' where id=4


create trigger trg_ddl
on database
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on sqlbatch db'
		rollback transaction 
	end

disable trigger trg_ddl on database

use js

create table demo4
(
id int
)



--SERVER SCOPED
create trigger trg_ddlserver
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on SERVER'
		rollback transaction --undo the DML Statements
	end

	 disable TRIGGER trg_ddlserver on ALL SERVER
select * from sample1

BEGIN TRANSACTION
	insert into sample1 values(9,'Ajisha') 
	SAVE TRANSACTION insert_stmt
	delete from sample1 where id = 7  
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION

--IMPLICIT TRANSACTION
SET IMPLICIT_TRANSACTIONS OFF