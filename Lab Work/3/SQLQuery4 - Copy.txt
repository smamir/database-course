create table employee
(
empid int,
empname varchar(15),
projectname varchar(10),
salary int,
primary key(empid)
)

insert into employee values (741,'asif','tista',10000)
insert into employee values (852,'rana','tista',12000)
insert into employee values (412,'rajib','padma',15000)
insert into employee values (842,'tara','tista',17000)
insert into employee values (558,'tamim','padma',8000)

select * from employee
select max(empid) from employee
select min(salary) from employee
select avg(salary) from employee
select count(empid) from employee
select max(salary)from employee group by projectname having projectname='padma'
select min(salary) from employee group by projectname having projectname='tista'
select avg(salary) from employee group by projectname having projectname='tista'
select empname from employee where salary=(select max(salary) from employee)
select empname from employee where salary>(select avg(salary) from employee)
select projectname,avg(salary) from employee group by projectname
select empname from employee where empid=(select min(empid) from employee) 