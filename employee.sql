create database simplicode;
use simplicode;
-------------------------------------------
create table employee(
`id` int not null,
`name` varchar(45) null,
`age` varchar(45) null,
`city` varchar(45) null,
`salary` varchar(45) null,
primary key(id)
);

-------------
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '101', 'rahul', '25', 'hyderabad', '30000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '102', 'kiran', '26', 'hyderabad', '28000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '103', 'neha', '24', 'chennai', '35000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '104', 'pranay', '28', 'bangalore', '40000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '105', 'anusha', '24', 'mumbai', '40000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '106', 'varsha', '25', 'hyderabad', '23000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '107', 'prem', '27', 'bangalore', '40000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '108', 'pravan', '24', 'mumbai', '35000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( '109', 'rohit', '28', 'bangalore', '50000');
insert into employee(`id`, `name`, `age`, `city`, `salary`) values ( "110","chinmayee", "25", "hyderabad", "32000");

---------------
select * from employee;

# ARITHMETIC OPERATORS
#------------let's do some addition-------------
select salary + 10000 as empnew_salary from employee;

select * , salary + 10000 as empnew_salary from employee;

#------------let's do some subtraction-----
select id, name, salary, salary - 2000 as salary_after_deduction from employee;

#-------------let's do some multiplication---
select id, name, salary, salary * 2 as new_salary from employee;

#---------let's do some division----
select id, name, salary, salary / 2 as new_salary from employee;

# COMPARISION OPERATORS

#--------let's do some EQUAL 
select * from employee where salary = 40000;

#--------let's do some NOT EQUAL 
select * from employee where salary != 40000;

#------let's do some GREATER THAN
select * from employee where id > 104;

#------let's do some LESS THAN
select * from employee where id < 105;

#--------let's do some GREATER THAN OR EQUAL TO
select * from employee where salary >= 40000;

#------let's do some LESS THAN OR EQUAL TO 
select * from employee where salary <= 30000;

# LOGICAL OPERATORS (BOOLEAN)
#-----let's do AND
select * from employee where salary > 25000 AND city = 'hyderabad';

#----let's do OR
select * from employee where salary < 30000 OR city = 'bangalore';

#------let's do BETWEEN
select * from employee where salary BETWEEN 25000 AND 35000;

#-------let't do NOT
select * from employee where NOT salary = 40000;






























