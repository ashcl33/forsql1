# sub query is a nested query that is enclosed inside another query

# sub query using select
select * from employeesfromgoogle;

select * from employeesfromgoogle
where salary < (select avg(salary) from employeesfromgoogle);

# sub query using insert

select * from employeekotable;
# let's create one more table for example

create table newtableemp(
`empid` int not null,
`empname` varchar(45) null,
`designation` varchar(45) null,
`total_salary` varchar(45) null,
primary key (`empid`)
);

select * from newtableemp;

# now we are gonna insert values from employeekotable with some condition

insert into newtableemp 
select empid, empname, designation, total_salary from employeekotable
where total_salary in (select total_salary from employeekotable where total_salary > 40000);







