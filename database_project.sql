create database project;

show databases;

# HOW TO SELECT A DATABASE?

use project;

# HOW TO DELETE A DATABASE?

drop database project;

create table employee (
`id` int not null,
`name` varchar(45) null,
`address` varchar(45) null, 
`salary` varchar(45) null, 
primary key(`id`)
);

select * from employee;
drop table employee;

select * from employee;

insert into employee (`id`, `name`, `address`, `salary`) values ('1', 'shyam', 'Irving, TX', '10000');
insert into employee (`id`, `name`, `address`, `salary`) values ('2', 'hari', 'Euless, TX', '20000');
insert into employee (`id`, `name`, `address`, `salary`) values ('3', 'Gita', 'Dallas, TX', '30000');
insert into employee (`id`, `name`, `address`, `salary`) values ('4', 'radhe', 'Denton, TX', '40000');
insert into employee (`id`, `name`, `address`, `salary`) values ('5', 'sameer', 'Richland, TX', '50000');

# delete from employee;

select * from employee;

# delete from employee where id = 1;

# truncate table employee;

alter table employee add (dob date);

# to update a column, let's say dob column

UPDATE employee SET `dob` = '1995-02-12' WHERE `id` = 1;
UPDATE employee SET `dob` = '1993-04-02' WHERE `id` = 2;
UPDATE employee SET `dob` = '1992-09-20' WHERE `id` = 3;
UPDATE employee SET `dob` = '1990-01-09' WHERE `id` = 4;
UPDATE employee SET `dob` = '1999-06-18' WHERE `id` = 5;

select * from employee;

# to rename table name

alter table employee rename to employee_new;

select * from employee_new;

# to copy from old table to new table

create table employee_details select * from employee_new;

select * from employee_details;

# another example
create table yessai select * from employee_details;

select * from yessai;
------------
select id, name, address from yessai;

select * from employee_new;

# select condition

select * from employee_new where salary = 50000;

--------------

# let's create one new employee table naming - employeekotable

create table employeekotable(
`empid` int not null,
`empname` varchar(45) null,
`age` varchar(45) null,
`designation` varchar(45) null,
`DOB` date null,
`city` varchar(45) null,
`salary` varchar(45) null,
primary key (`empid`)
);

select * from employeekotable;

insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('101', 'rohan', '24', 'business analyst', '1998-10-25', 'hyderabad', '35000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('102', 'kiran', '27', 'manager', '1995-03-07', 'chennai', '50000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('103', 'kavya', '26', 'HR', '1996-11-13', 'mumbai', '45000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('104', 'aryan', '24', 'QA engineer', '1998-09-15', 'chennai', '30000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('105', 'preeti', '25', 'customer service', '1997-10-25', 'pune', '25000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('106', 'varsha', '27', 'developer', '1995-10-25', 'hyderabad', '35000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('107', 'rohan', '24', 'business analyst', '1998-10-25', 'hyderabad', '35000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('108', 'salman', '25', 'developer', '1997-10-25', 'bangalore', '55000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('109', 'pravin', '24', 'business analyst', '1998-10-25', 'new delhi', '30000');
insert into employeekotable(`empid`, `empname`, `age`, `designation`, `DOB`, `city`, `salary`) values ('110', 'suman', '26', 'data analyst', '1996-10-25', 'chennai', '45000');

select * from employeekotable;

select empid, empname, salary from employeekotable;

select * from employeekotable where city = 'mumbai';

# select distinct 

select distinct city from employeekotable;
select distinct designation from employeekotable;

# select COUNT
select count(*) from employeekotable;

select count(*) from employeekotable where salary = 30000;

select count(distinct city) from employeekotable;

select count(city) from employeekotable;

# select top/limit (for mysql limit is used)

select * from employeekotable limit 3;

select * from employeekotable order by salary desc limit 4;

# select random 

select * from employeekotable order by rand();
select * from employeekotable order by rand() limit 4;

# select IN

select * from employeekotable where empid IN (102, 104, 108);

#select date

select * from employeekotable where DOB < '1997-01-01';
select * from employeekotable where DOB > '1997-01-01';
select * from employeekotable where DOB between '1997-01-01' and '1998-01-01';

# select SUM
select sum(salary) from employeekotable;

select sum(salary) from employeekotable where city = 'mumbai';

# select NULL
# (for this let's create one sample table named student)

create table student(
`roll no` int not null,
`name` varchar(45) null,
`age` varchar(45) null,
`city` varchar(45) null,
`marks` varchar(45) null,
primary key (`roll no`)
);

select * from student;

insert into student(`roll no`, `name`, `age`) values ('1', 'kiran', '24');
insert into student(`roll no`, `name`, `age`, `city`) values ('2', 'priya', '23', 'hyderabad');
insert into student(`roll no`, `name`, `age`, `city`, `marks`) values ('3', 'darshana', '22', 'chennai', '900');

select * from student;

select * from student where city is null;

select * from student where city is not null;

----------------
select * from employeekotable;

# using where clause

select * from employeekotable where city = 'mumbai';

select * from employeekotable where salary > 30000;

select * from employeekotable where salary < 30000;

select * from employeekotable where salary between 35000 and 50000;

# how to update any values?
update employeekotable set salary = 75000 where empid = 101;
update employeekotable set designation = 'product analyst' where empid = 110;
update employeekotable set designation = 'Technical Assistant' where empname = 'preeti'; # euta matra preeti vayera yo gareko otherwise not advised 

# AND condition
select * from employeekotable where designation = 'business analyst' and salary = 35000; # both conditions meet vayo vane

# OR condition
select * from employeekotable where designation = 'business analyst' or salary = 35000; # kunai euta condition meet vaye vane
select * from employeekotable where designation = 'developer' or city = 'mumbai'; # kunai euta condition meet vaye vane

# LIMIT condition
select * from employeekotable limit 5; # to display first 5

# AS condition ( this is used to rename a column temporarily)
select salary as 'total salary' from employeekotable;

# LIKE condition (used to fetch matching rows or values from the table that satisfies the wild card operator such as % and _)
# % This represents a single or multiple character
# _ This represents a single number or character

select * from employeekotable where empname like 'K%';
select * from employeekotable where empname like '%a';

# ORDER BY CLAUSE 
select * from employeekotable;
select * from employeekotable order by salary; #by default it sorts in ascending even if we don't write asc
select * from employeekotable order by salary asc; # exactly same as above 
select * from employeekotable order by empname; # by default it sorts in alphabetical(ascending) order
select * from employeekotable order by empid desc; # sorts in descending
select * from employeekotable where age > 26 order by empname asc; 
select * from employeekotable order by salary desc;
select * from employeekotable where empid > 105 order by salary desc;

# --order by ramdom/limit
select * from employeekotable order by rand();
select * from employeekotable order by salary desc limit 6;

#---order by multiple statement
select * from employeekotable order by designation asc, salary desc;

#### INSERT STATEMENT (DML language) ###
create table customer(
`custid` int not null,
`custname` varchar(45) null,
`age` varchar(45) null,
`address` varchar(45) null,
`product` varchar(45) null,
`purchasedate` date null,
primary key (`custid`)
);

select * from customer;

insert into customer( custid, custname, age, address, product, purchasedate) values (1011, 'rahul', 25, 'hyderabad', 'phone', '2022-03-25');
insert into customer(custid, custname, product) values (1012, 'kavya', 'AC');

# insert multiple rows 
insert into customer values 
(1013, 'ajay', 24, 'mumbai', 'cooker', '2022-04-15'),
(1014, 'divya', 25, 'bangalore', 'refrigerator', '2022-04-09'),
(1015, 'sohan', 23, 'chennai', 'laptop', '2022-05-15');


### UPDATE STATEMENT

select * from employeekotable;
update employeekotable set salary = 95000 where empid = 101;

update employeekotable set empname = 'hariprasad' where empid = 107;

# updating multiple columns
update employeekotable set designation = 'Senior HR', salary = 80000 where empid = 103;

# update date 
update employeekotable set DOB = '1996-01-01' where empid = 103;
update employeekotable set age = 27 where empid = 103;

alter table employeekotable add (DOJ date); # here, Adding a new column - DOJ 

update employeekotable set DOJ = '2022-01-10' where designation = 'business analyst';
update employeekotable set DOJ = '2022-02-22' where designation = 'manager';
update employeekotable set DOJ = '2022-03-12' where designation = 'HR';
update employeekotable set DOJ = '2022-04-11' where designation = 'QA Engineer';
update employeekotable set DOJ = '2022-05-09' where designation = 'customer service';
update employeekotable set DOJ = '2022-06-12' where designation = 'developer';
update employeekotable set DOJ = '2022-02-01' where designation = 'data analyst';

### DELETE STATEMENT

# deleting one example say, empid 110
delete from employeekotable where empid = 110;

select count(*) from employeekotable;

delete from employeekotable where designation = 'business analyst';

delete from employeekotable where designation = 'data analyst' or salary < 30000;

delete from employeekotable where salary between 30000 and 45000;

delete from employeekotable;

## let's create another column named - dept_id in employeekotable

alter table employeekotable add (dept_id int not null);

update employeekotable set dept_id = 16 where designation = 'business analyst';
update employeekotable set dept_id = 11 where designation = 'manager';
update employeekotable set dept_id = 17 where designation = 'HR';
update employeekotable set dept_id = 13 where designation = 'QA Engineer';
update employeekotable set dept_id = 12 where designation = 'customer service';
update employeekotable set dept_id = 14 where designation = 'developer';
update employeekotable set dept_id = 15 where designation = 'data analyst';

### let's create another table named - department table having one column - dept_id

create table department(
`dept_id` int not null,
`dept_name` varchar(45) null,
primary key (`dept_id`)
);

select * from department;
insert into department values
(11, 'IT'),
(12, 'HR'),
(13, 'Finance'),
(14, 'Sales & Marketing'),
(15, 'Operations');

## Also let's create another table named - projects that consists of project_id, empid, project_name and project_manager as columns

create table projects(
`project_id` int not null,
`empid` int not null,
`project_name` varchar(45) null,
`project_manager` varchar(45) null,
primary key (`project_id`)
);

select * from projects;

insert into projects values
(110, 101, 'ERP System', 'vinay'),
(210, 107, 'Cyber Security', 'priyanka'),
(310, 104, 'Android Development', 'karthik'),
(410, 105, 'Data Warehousing', 'aman'),
(510, 107, 'Image Encryption', 'raghav'),
(610, 109, 'Network Solutions', 'sneha'),
(710, 101, 'Employee Assistance Program', 'bhavya');

































































