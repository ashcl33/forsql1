select * from employeekotable;

## using alter to add some more columns

alter table employeekotable add column aadhar_no varchar(25) not null;

alter table employeekotable add column (pan_no varchar(20), uan_no varchar(20));

## to modify
alter table employeekotable change column salary total_salary varchar(45); #renaming column name

## To describe table
DESC employeekotable;

# let's change the data type of age from varchar to int

alter table employeekotable modify column age int;
desc employeekotable;

# creating another column named - bonus and setting a default value for it
alter table employeekotable add column bonus varchar(25);
alter table employeekotable alter column bonus set default 15000;

## to drop or delete the newly created columns like aadhar_no, pan_no, uan_no and bonus

alter table employeekotable drop column aadhar_no;
alter table employeekotable drop column pan_no, drop column uan_no;




