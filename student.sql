
create table student (
`roll no` int not null,
`name` varchar(45) null,
`age` varchar(45) null,
`city` varchar(45) null,
`date of birth` date null,
`stream` varchar(45) null,
`total marks` varchar(45) null,
primary key (`roll no`)
);

select * from student;

insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('1', 'Rohan', '21', 'Bangalore', '2001-06-26', 'MIS', '989');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('2', 'Aman', '22', 'Pune', '2000-05-14', 'MECH', '922');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('3', 'Divya', '21', 'Kochi', '2001-01-20', 'COMPSCI', '912');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('4', 'Pratik', '20', 'Hyderabad', '2002-02-11', 'MIS', '929');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('5', 'Nitya', '23', 'Chennai', '1999-10-22', 'COMPSCI', '980');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('6', 'Suhana', '24', 'Mumbai', '1998-08-17', 'MGMT', '939');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('7', 'Rajesh', '25', 'Lucknow', '1997-05-20', 'MIS', '919');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('8', 'Hrithik', '24', 'Meerut', '1998-09-14', 'MGMT', '901');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('9', 'Prerana', '23', 'Chennai', '1999-07-10', 'COMPSCI', '982');
insert into student (`roll no`, `name`, `age`, `city`, `date of birth`, `stream`, `total marks`) values ('10', 'Rahul', '26', 'Bangalore', '1996-06-26', 'MECH', '902');

# BOOLEAN EXAMPLES
select * from student where city = 'Bangalore';

select * from student where `total marks` = 989;

# NUMERIC EXPRESSION EXAMPLES

select * from student where `total marks` / 2 > 480;

select AVG(`total marks`) from student;

select SUM(`total marks`) from student;

# DATE EXAMPLE

select * from student where `date of birth` > '1999-01-01';

select current_timestamp();

select * from student;
















