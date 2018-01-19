create table customer
(
customer_id int,
customer_name varchar(20),
address varchar(20),
primary key(customer_id)
)

create table account
(
acct_no int,
balance int,
branch_name varchar(10),
primary key(acct_no)
)

create table loan
(
loan_no int,
amount int,
branch_name varchar(10),
primary key(loan_no)
)


create table borrower
(
loan_no int,
customer_id int,
primary key(loan_no,customer_id)
)


create table depositor
(
acct_no int,
customer_id int,
primary key(acct_no,customer_id)
)

insert into customer values (105,'Asif','Dhaka')
insert into customer values (925,'Ana','Sylhet')
insert into customer values (820,'Dona','Raj')
insert into customer values (207,'Alif','Bogra')

insert into account values (101,20000,'BD')
insert into account values (103,50000,'CD')
insert into account values (206,70000,'AD')

insert into loan values (245,10000,'AB')
insert into loan values (310,15000,'BD')
insert into loan values (350,8000,'BD')
insert into loan values (450,7000,'CD')

insert into borrower values (245,105)
insert into borrower values (310,925)
insert into borrower values (356,820)
insert into borrower values (450,821)

insert into depositor values (101,307)
insert into depositor values (103,925)
insert into depositor values (106,820)

(select customer_id from borrower) intersect (select customer_id from depositor)
select customer_id from borrower where customer_id in (select customer_id from depositor)
(select customer_id from depositor) except (select customer_id from borrower)
(select customer_id from borrower) except (select customer_id from depositor)
select loan_no from loan where amount> some (select amount from loan where branch_name='BD')
select loan_no from loan where amount> any(select amount from loan where branch_name='BD')
select loan_no from loan where amount> all(select amount from loan where branch_name='BD')
select loan_no from loan where amount = (select min(amount) from loan)
select acct_no from account where balance= (select max(balance) from account)
select branch_name from account where balance = (select max(balance) from account)
select avg(amount) from loan
select branch_name,avg(amount) from loan group by branch_name
select branch_name from loan group by branch_name having avg(amount)>= all (select avg(amount) from loan group by branch_name)
select count(acct_no) from account
select branch_name, avg(amount) from loan group by branch_name having avg(amount)>8000