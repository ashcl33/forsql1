select * from employeekotable;
select * from department;
select * from projects;

# Example to retrieve the employee details and the department they are working in (INNER JOIN)

select employeekotable.empid, employeekotable.empname, employeekotable.designation, department.dept_id, department.dept_name from employeekotable 
inner join department on employeekotable.dept_id = department.dept_id;

# Example to retrieve employee details , project they are working on and the project manager assisting them (INNER JOIN)

select e.empid, e.empname, p.project_name, p.project_manager
from employeekotable e inner join projects p on e.empid = p.empid;

# Example to show full (OUTER JOIN)
select e.empid, e.empname, p.project_name, p.project_manager
from employeekotable e left join projects p on e.empid = p.empid
union
select e.empid, e.empname, p.project_name, p.project_manager
from employeekotable e right join projects p on e.empid = p.empid;

# Example to show (LEFT JOIN) between customer table and orders table.
select * from customer;

# SINCE THERE IS NO ORDERS TABLE to illustrate, we'll create it. 

create table Orders(
`product_id` int not null,
`custid` int not null,
`product_name` varchar(45) null,
`quantity` int not null,
`price` int not null,
`purchasedate` date null,
primary key (`product_id`)
);

select * from Orders;

insert into orders values
(1, 1011, 'AC', 1, 40000, '2021-01-11'),
(2, 1012, 'TV', 2, 60000, '2021-02-22'),
(3, 1013, 'Cellphone', 3, 90000, '2021-03-23'),
(4, 1014, 'Stove', 4, 32000, '2021-04-24'),
(6, 1012, 'Sofa', 2, 20000, '2021-05-12'),
(8, 1019, 'Cellphone', 2, 60000, '2021-06-21');

# Now, we can do left join between Customer table and orders table

select c.custid, c.custname, c.address, o.product_name, o.quantity, o.price, o.purchasedate
from customer c left join orders o on c.custid = o.custid;

# Let's do (RIGHT JOIN) between customer table and orders table

select c.custname, c.address, o.product_name, o.quantity, o.price, o.purchasedate
from customer c right join orders o on c.custid = o.custid;


select c.custname, c.address, o.product_name, o.quantity, o.price, o.purchasedate
from orders o right join customer c on c.custid = o.custid; # just checking what happens when we interchange the first and second table



















