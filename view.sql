# Why we use view in sql?
  # for security, complexity, consistency
  
# let's create one table for illustration

create table `customerdell`(
`custid` int not null,
`custname` varchar(45) null,
`age` varchar(45) null,
`address` varchar(45) null,
primary key (`custid`)
);

select * from customerdell;

insert into customerdell values
(101, 'kiran', 25, 'hyderabad'),
(102, 'priya', 26, 'bangalore'),
(103, 'kushal', 24, 'mumbai'),
(104, 'vaibhav', 28, 'hyderabad'),
(105, 'gayatri', 23, 'chennai');

# now we can create a view for this table customerdell

create view customerview as 
select * from customerdell;

select * from customerview;

desc customerview;

#---how to insert

insert into customerview values(701,'jindagi', 34, 'kaski');

#---how to update

update customerview set address = 'pune'
where custid = 701;


#---how to delete

delete from customerview where custid = 701;











