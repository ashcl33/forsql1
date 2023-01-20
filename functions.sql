/* Syntax
DELIMITER $$
CREATE FUNCTION function_name(
	parameter1 datatype
    parameter2 datatype
)
RETURNS datatype
DETERMINISTIC
BEGIN
	-- enter the code for the function
END $$
DELIMITER $$
*/

# let's take an example
/*
create a function bonusstatus which has one parameter salary of type char and returns varchar(20).
use the following logical operations in the statement to create the function
-return 'eligible for bonus ' if salary > 35000
else return 'not eligible'
*/

# select * from  employeekotable;
# desc employeekotable;


DELIMITER $$
CREATE FUNCTION bonusstatus(
salary char(20)
)
RETURNS varchar(20)
DETERMINISTIC
BEGIN
	IF salary > 35000 THEN
    RETURN ("ELIGIBLE FOR BONUS");
    ELSE
    RETURN ("NOT ELIGIBLE");
END IF;
END $$
DELIMITER $$

# let's check if our function is working or not

select bonusstatus(40000);
select bonusstatus(20000);

select * from employeekotable;

select empid, empname, total_salary, bonusstatus(total_salary) from employeekotable;




