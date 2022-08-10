  create function cube(@a int)
  returns int
  as
  begin
   return @a*@a*@a
   end
   select dbo.cube(2) as result
   create function calAge(@dob date)
   returns int
   as 
   begin
   declare @age int
   set @age = datediff(year,@dob,getdate())
   return @age
   end
   select dbo.calAge('01/01/2000')as age
  use ORG
   select * from Worker
   alter table Worker add dob date
   create table students
(
SID int primary key,
SName varchar(25) not null,
SDept int not null,
SClub int not null,
)
   select sno,dob,dbo.calAge(dob) as Age from demo
   
   --INLINE TABLE
   select *  from students 
   create function student_Dept_Details(@id int)
   returns table
   as
   returns(select sid,sname,sdept,from students where sid = @id)
   select * from dbo.student_Dept_Details(2)
   update dbo.student_dept_details(2) set sname = 'peter'
   
   --MULTI STATEMENT

   craete function student_club_details()
   returns @table table(studentid int,studentname varchar(20),studentclub int)
   as
   begin
   insert into @table
   select sid,sname,sclub from students
   return
   end
   select * from dbo.students_club_details()

   --stored procedure

   create procedure proc_students_dept
   as
   begin
   select sid,sname,sdept from students
   end
   exec proc_students_dept
   exec[sys].[xp_logininfo]
   create procedure sp_clubdetails(@club int)
   as
   begin
   select sid, sname,sclub from students where sclub =@club
   end
   exec sp_clubdetails @club =202
   create procedure sp_batch1_salary(@sumsalary int output)
   as
   begin
   select @sumsalary = sum(salary),'Total salary details' from batch1
   end
   declare @totalsalary int
   exec sp_batch1_salary.@totalsalary output
   print @totalsalary
   select * from students
   
   --create a temp table

   select sid,sname,sdept into #sdept_details from students
   select * from #sdept_details




