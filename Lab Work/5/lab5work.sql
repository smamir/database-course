create table employee
(
ename varchar(10),
street varchar(20),
city varchar(10),
primary key(ename)
) 

create table company
(
cname varchar(20),
city varchar(10),
primary key(cname)
)

create table works
(
ename varchar(10),
cname varchar(15),
salary int,
jdate varchar(20),
primary key(ename,cname)
)

create table manages
(
ename varchar(10),
mname varchar(10),
primary key(ename,mname)
)

insert into employee values ('Rahim','x','Dhaka')
insert into employee values ('Mitu','y','Sylhet')
insert into employee values ('Sabbir','z','Ctg')
insert into employee values ('Babu','p','Dhaka')
insert into employee values ('Toma','x','Bogra')
insert into employee values ('Jabbar','x','Comilla')

insert into company values ('First B.C','Dhaka')
insert into company values ('Small B.C','Sylhet')
insert into company values ('Square pharma','Ctg')
insert into company values ('GP','Rajshashi')

insert into works values ('Rahim','First B.C',20000,'8/8/2008')
insert into works values ('Mitu','Small B.C',30000,'13/8/2008')
insert into works values ('Sabbir','Square pharma',20000,'8/8/2008')
insert into works values ('Babu','GP',50000,'31/12/2009')
insert into works values ('Toma','Square pharma',35000,'10/10/2010')
insert into works values ('Jabbar','First B.C',15000,'4/4/2009')

insert into manages values ('Rahim','Sabbir')
insert into manages values ('Mitu','Babu')
insert into manages values ('Toma','Oronno')
insert into manages values ('Salam','Jabbar')

select * from employee
select * from company
select * from works
select * from manages

delete from company where city='Dhaka'
delete from works where salary <20000
delete from employee where street='x'
delete from works where ename in ( select ename from employee where city='Rajshahi') 
delete from employee where ename in (select ename from works where cname='ABC')
delete from works where ename in (select ename from manages where mname='Sabbir')
update works set salary=salary*1.1 where cname='First B.C'
update works set salary=salary*1.1 where ename in (select distinct mname from manages) 
update works set salary=salary*1.1 where cname in (select cname from company where city='Bogra')
update employee set city='Bhola' where ename='Rahim'

update works set salary=case 
when salary*1.1>100000 then salary*1.03 
else salary*1.1 
end 
where ename in (select distinct mname from manages)