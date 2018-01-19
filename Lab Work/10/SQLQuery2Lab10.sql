create table Dept
(dept_id int,
 dept_name varchar(20),
 primary key(dept_id)
 )
create table instructor(
ins_id int,
ins_name varchar(20),
salary int,
dept_id int,
primary key(ins_id)
)
insert into Dept values(60,'CSE')
insert into Dept values(10,'BBA')
insert into Dept values(80,'EEE')
insert into Dept values(40,'ETE')
insert into Dept values(50,'ECE')
insert into Instructor values(101,'ABC',44000,60)
insert into Instructor values(102,'XYZ',66000,60)
insert into Instructor values(103,'ASD',101871,60)
insert into Instructor values(201,'EFG',40000,10)
insert into Instructor values(202,'MNO',60000,10)
insert into Instructor values(301,'HIJ',88000,80)
insert into Instructor values(302,'LMN',44000,80)
insert into Instructor values(401,'PQR',60000,50)
insert into Instructor values(402,'FGH',50000,50)
insert into Instructor values(501,'GHL',40000,40)
insert into Instructor values(502,'XCV',60000,40)


create procedure update_salary (@deptname1 varchar(20))
as
begin
update instructor set salary=salary*1.1 where dept_id in(select dept_id from dept where dept_name=@deptname1)
end
exec update_salary 'CSE'
select * from instructor

create function getName(@id int)
returns varchar(20)
as
begin
declare @dname varchar(20)
select @dname=dept_name from dept where dept_id=@id
return @dname
end
select dbo.getName(60)

create function getSalary(@ins_id1 int)
returns int
as begin
 declare @salary1 int
 select @salary1 = Salary from instructor where @ins_id1 = ins_id
   return @salary1
end
select dbo.getSalary (103)

declare @salary2 int
select @salary2=dbo.getSalary(103)
if @salary2>=50000
print 'His salary is high.'
else
print 'His salary is low.'




declare @salary2 int
select @salary2 = dbo.getSalary (103)
if @salary2>50000
begin
update instructor set salary =@salary2*1.05 where ins_id=103
end
else begin
update instructor set salary=@salary2*1.1 where ins_id=103
end

create function calSalary(@ins_id1 int,@ins_id2 int)
returns int
as begin
declare @salary1 int
select @salary1 = (T.salary+S.salary) from instructor as T, instructor as S where T.ins_id=@ins_id1 and S.ins_id=@ins_id2
return @salary1
end
select dbo.calSalary(401,402)