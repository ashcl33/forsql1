# generally groupby is used on aggregate functions
# it implements split, apply, and combine technique

# the ORDER BY clause sorts the records in ASC, and DESC order

select * from employeesfromgoogle;

## let's try GROUP BY
select count(employee_id) as total, department_id
from employeesfromgoogle
group by department_id;

select count(employee_id) as total, department_id
from employeesfromgoogle
group by department_id
order by department_id;

select * from employeesfromgoogle 
order by salary;

## using BETWEEN
# it selects values within a given range, the values can be numbers, text, or dates
# syntax: select column_names
#          from table_name
#          where column_name BETWEEN range_start AND range_end; {{inclusive range}}

select * from employeesfromgoogle;

select employee_id, first_name from employeesfromgoogle
where employee_id BETWEEN 110 AND 170;

select * from employeesfromgoogle
where salary BETWEEN 8000 AND 10000
order by salary;

select * from employeesfromgoogle
where salary NOT BETWEEN 8000 AND 10000
order by salary; #using not keyword

select * from employeesfromgoogle
where EMPLOYEE_ID between 201 and 205;

select * from employeesfromgoogle
where first_name between 'A' and 'D';

## using HAVING

select * from employeesfromgoogle;

# first, let's use where clause

select * from employeesfromgoogle 
where salary < 5000 and DEPARTMENT_ID = 30;

update employeesfromgoogle
set salary = 10000
where employee_id = 116;

select * from employeesfromgoogle where EMPLOYEE_ID = 116; # salary's value changed from 2900 to 10000

delete from employeesfromgoogle where EMPLOYEE_ID = 127; # just using where clause example in delete

## AGAIN LET'S DISCUSS HAVING CLAUSE

select department_id, avg(salary), count(employee_id)
from employeesfromgoogle
group by department_id
having avg(salary) > 5000;


select department_id, avg(salary), count(employee_id)
from employeesfromgoogle
where department_id > 80
group by department_id
having avg(salary) > 5000; # in this case we are using both where and having clause


select department_id, avg(salary), count(employee_id)
from employeesfromgoogle
where department_id > 80
group by department_id
having avg(salary) > 5000
order by DEPARTMENT_ID; # in this case we are using where, having, and order by as well



















