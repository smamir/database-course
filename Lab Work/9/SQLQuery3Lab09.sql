create table loan
(
loan_no int,
amount int,
branch_name varchar(10),
primary key(loan_no)
)

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

create procedure addloan
(
@loan_no int,
@amount int,
@branch_name varchar(20)
)
as
begin
insert into loan values (@loan_no, @amount, @branch_name)
end

exec addloan 245,10000,'AB'
exec addloan 310,15000,'BD'
exec addloan 350,8000,'BD'
exec addloan 450,7000,'CD'

select * from loan

create procedure addcustomer
(
@customer_id int,
@customer_name varchar(20),
@address varchar(20)
)
as
begin
insert into customer values (@customer_id, @customer_name, @address)
end

exec addcustomer 105,'Asif','Dhaka'
exec addcustomer 925,'Ana','Sylhet'
exec addcustomer 820,'Dona','Raj'
exec addcustomer 207,'Alif','Bogra'

select * from customer

create procedure addaccount
(
@acct_no int,
@balance int,
@branch_name varchar(20)
)
as
begin
insert into account values (@acct_no, @balance, @branch_name)
end

exec addaccount 101,20000,'BD'
exec addaccount 103,50000,'CD'
exec addaccount 206,70000,'AD'


create procedure get_amount (@loan_no1 int)
as
begin
select amount from loan where loan_no=@loan_no1
end

exec get_amount 245

create procedure get_balance (@branch_name1 varchar(20))
as
begin
select balance from account where branch_name=@branch_name1
end

exec get_balance 'CD'

create procedure get_name (@customer_id1 int)
as 
begin 
select customer_name from customer where customer_id=@customer_id1
end 

exec get_name 207

create procedure get_customer_id (@name varchar(20))
as
begin
select customer_id from customer where customer_name=@name
end

exec get_customer_id 'Asif'

create procedure get_customer_id_name (@address1 varchar(30))
as
begin
select customer_name,customer_id from customer where address=@address1
end

exec get_customer_id_name 'Dhaka'

create procedure uxyz (@xloan_no int)
as
begin
update loan set amount=amount*2 where loan_no=@xloan_no
end

exec uxyz 245

if (select count(customer_id) from customer where customer_name like 'Asif')>3
print 'There are more than three asif in our university.'
else print 'There are three or less asif in our university.'

declare @number int
set @number=50
if @number>100
print 'The number is large'
else
if @number<10
print 'The number is small'
else
print 'The number is medium'