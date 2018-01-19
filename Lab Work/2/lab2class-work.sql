Create table student
(
id int not null ,
sname varchar(20),
age int ,
primary key (id)
)
insert into student(id,sname,age) values(701,'Asif',20)
insert into student(id,sname,age) values(907,'Ana',19)
insert into student(id,sname,age) values(1009,'David',18)
select * from student


Create table dept
(
deptid int ,
deptname varchar(50),
budget int,
primary key(deptid)
)

insert into dept(deptid,deptname,budget) values(60,'CSE',10000)
insert into dept(deptid,deptname,budget) values(70,'EEE',18000)
insert into dept(deptid,deptname,budget) values(80,'ECE',23000)
insert into dept(deptid,deptname,budget) values(90,'BBA',35000)
select * from dept

Create table instructor
(
ins_id int not null,
ins_name varchar(50),
dept_id int,
salary int,
primary key (ins_id)
)
insert into instructor (ins_id,ins_name,dept_id,salary) values(1001,'Anis',60,10000)
insert into instructor (ins_id,ins_name,dept_id,salary) values(1002,'Arif',80,10000)
insert into instructor (ins_id,ins_name,dept_id,salary) values(1011,'Eva',80,20000)
insert into instructor (ins_id,ins_name,dept_id,salary) values(1021,'Mina',70,25000)
select * from instructor

Create table student_course
(
sid int,
sname varchar(50),
deptid int,
course_code varchar(20),
primary key(sid,course_code)
)
insert into student_course(sid,sname,deptid,course_code) values(701,'Asif',60,'CSE301')
insert into student_course(sid,sname,deptid,course_code) values(701,'Asif',60,'CSE325')
insert into student_course(sid,sname,deptid,course_code) values(702,'Ana',70,'CSE301')
insert into student_course(sid,sname,deptid,course_code) values(702,'Ana',70,'CSE325')
select * from student_course


select * from student
select * from dept
select * from instructor
select * from student_course
