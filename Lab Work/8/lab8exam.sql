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


select t.customer_id from borrower as t join depositor as s on t.customer_id=s.customer_id

select d.acct_no from depositor as d join customer as c on c.customer_id=d.customer_id where address='Dhaka' 

select c.customer_name from customer as c join borrower as b on c.customer_id=b.customer_id

select c.customer_name from customer as c join depositor as d on c.customer_id=d.customer_id

select c.address from customer as c join borrower as b on c.customer_id=b.customer_id

select c.address from customer as c join depositor as d on c.customer_id=d.customer_id

select account.acct_no,balance,branch_name from account join depositor on account.acct_no=depositor.acct_no 
join customer on customer.customer_id=depositor.customer_id where address='Dhaka'

select loan.loan_no,amount,branch_name from loan 
join borrower on loan.loan_no=borrower.loan_no join customer on customer.customer_id=borrower.customer_id 

select customer.customer_name from customer join depositor on customer.customer_id=depositor.customer_id join account on account.acct_no=depositor.acct_no

select * from 