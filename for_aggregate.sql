# let's create one more table named - restaurant_orders for example

create table restaurant_orders (
`order_id` int not null,
`order_date` date null,
`item_name` varchar(45) null,
`quantity` int not null,
`price` int not null,
primary key (`order_id`)
);

select * from restaurant_orders;

insert into restaurant_orders values
(25581, '2019-08-03', 'Tandoori Mixed Grill', 1, 11.95),
(25582, '2019-08-03', 'Madras Sauce', 1, 3.95),
(25583, '2019-08-03', 'Mushroom Rice', 1, 2.95),
(25584, '2019-08-03', 'Garlic Naan', 1, 4.95),
(25585, '2019-08-03', 'Aalu Paratha', 1, 3.95),
(25586, '2019-08-03', 'Plain Rice', 1, 6.95),
(25587, '2019-08-03', 'Chicken Biryani', 1, 5.95),
(25588, '2019-08-03', 'Fried Noodles', 1, 3.95);
 # int use gareko vayera price without decimal display hunchha
# Using COUNT

select count(*) from restaurant_orders;

select count(distinct order_id) from restaurant_orders;

select item_name, count(*) 
from restaurant_orders
group by item_name
order by item_name;

select * from restaurant_orders where item_name = 'Chicken Biryani';

select item_name, count(*) 
from restaurant_orders
where price < 4
group by item_name
order by item_name;


select * from restaurant_orders where item_name = 'Mushroom Rice';

# using MIN/MAX

select min(price) from restaurant_orders;
select max(price) from restaurant_orders;

select item_name, price
from restaurant_orders
where price =
(select min(price) from restaurant_orders); # using sub-query

select item_name, price
from restaurant_orders
where price =
(select max(price) from restaurant_orders); #using sub-query


select distinct item_name, price
from restaurant_orders
where price =
(select min(price) from restaurant_orders); #using distinct

# using SUM()

select sum(price*quantity) as total_amount from restaurant_orders;
select sum(price*quantity) total_amt from restaurant_orders; # without writing 'as' also worked fine

# using AVG()

select AVG(price) from restaurant_orders;

select item_name, price
from restaurant_orders
where price >
(select AVG(price) from restaurant_orders); # using a sub-query

# ---------------------SOME SCALAR FUNCTIONS----------------

select * from employeekotable;

# --using ucase()

select empname, ucase(empname) from employeekotable;

# --using lcase()
select designation, lcase(designation) from employeekotable;

# --using len() 
select length(empname) from employeekotable;
select designation, length(designation) from employeekotable; # the space between words are also counted in the length

# --mid()
  # Syntax : select mid(column_name, start_position, length) from table_name; 
select designation, mid(designation, 1, 3) from employeekotable; # for first 3 letters; starting position is 1 and length is 3

# --round()

# let's create one sample table for dec value

create table sampleonly (
`sampleid` int not null,
`sample_price` dec(4,2) not null,
primary key (`sampleid`)
);

select * from sampleonly;
insert into sampleonly values
(01, 22.45),
(02, 45.89),
(03, 56.91),
(04, 67.26),
(05, 78.93);

# now, we can use round function

# Syntax: select round(column_name, decimals) from table_name;

select sample_price, round(sample_price, 1) from sampleonly;
select sample_price, round(sample_price) from sampleonly;
select sample_price, round(sample_price, 0) from sampleonly;






















