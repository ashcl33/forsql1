select * from employeesfromgoogle;

# to find max salary
select max(salary) from employeesfromgoogle;

# to find the second highest salary, we have to use sub querey

select max(salary) from employeesfromgoogle where
salary < (select max(salary) from employeesfromgoogle);

# just checking
select * from employeesfromgoogle order by salary desc;

#----using LIMIT() clause
#    syntax: select column_list from tablename order by expression limit n-1, 1;

select distinct salary from employeesfromgoogle order by salary desc limit 9,1; # for 10th highest salary-> (10-1)=9. and 1 after comma represents the 1 row after the (n-1) i.e 1 record after the first 9 rows.

select distinct salary from employeesfromgoogle order by salary desc limit 23,1; # for 24th highest salary

# now let's fetch the complete details of those employees who are having 24th highest salary. For this we are gonna use above query as a subquery.

select * from employeesfromgoogle where SALARY =
(select distinct salary from employeesfromgoogle order by salary desc limit 23,1);


# Now to find fist 5 highest salaries
select distinct salary from employeesfromgoogle order by salary desc limit 0,5;

# -- DENSE RANK()
# Syntax: select column_list, dense_rank() over (order by expression) as aliasname from table_name;

select employee_id, first_name, last_name, salary, dense_rank() over (order by salary desc) as rank_salary 
from employeesfromgoogle;

# to find the nth highest salary, say 22nd
select employee_id, first_name, last_name, salary from 
(select employee_id, first_name, last_name, salary, dense_rank() over (order by salary desc) as rank_salary 
from employeesfromgoogle) as E    #euta alias dinu parchha jasto E, je diye pani hunchha of our choice
where rank_salary = 22;


select employee_id, first_name, last_name, salary from 
(select employee_id, first_name, last_name, salary, dense_rank() over (order by salary desc) as rank_salary 
from employeesfromgoogle) as E    #euta alias dinu parchha jasto E, je diye pani hunchha of our choice
where rank_salary = 15; #for 15th highest salary



