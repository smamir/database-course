create table course
(
course_id varchar(10),
course_name varchar(30),
semester varchar(10),
year int,
primary key(course_id)
)

create table student
(
st_id int,
st_name varchar(30),
st_address varchar(50),
course_id varchar(10),
primary key (st_id),
foreign key(course_id) references course
)

insert into course values ('cse205','dmath','fall',2014)
insert into course values ('cse101','intro','fall',2012)
insert into course values ('cse301','database','fall',2011)

insert into student values (412,'asif','dhaka','cse205')
insert into student values (521, 'ana','sylhet','cse101')
insert into student values (865,'bobi','rajshahi','cse301')
insert into student values (741,'rupa','dhaka','cse205')
insert into student values (895,'asif','dhaka','cse301')
insert into student values (746,'robi','sylhet','cse301')
insert into student values (845,'nazrul','sylhrt','cse301')

select * from course
select * from student
select * from student where course_id='cse301'
select * from student where st_address='dhaka'
select distinct(st_address) from student
select st_name,st_address from student
select st_id, course_id from student
select distinct(st_name) from student
select all(st_name) from student
select * from course where year=2014
select * from course where year between 2011 and 2012
select course_name, semester from course where course_id='cse205'
select * from student where course_id='cse101' and st_address='sylhet'
select st_id,st_name,course_name from student,course where student.course_id=course.course_id
select st_id,st_name,student.course_id,semester,year from student,course where student.course_id=course.course_id
select st_id,course_name from student,course where  student.course_id=course.course_id and semester='fall' and year=2012
select st_id,st_name,st_address,semester,year from student,course where  student.course_id=course.course_id
select course_id,course_name from course where year between 2011 and 2012
