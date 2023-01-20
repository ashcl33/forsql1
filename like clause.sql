select * from employeesfromgoogle;

# -- percent %
select * from employeesfromgoogle where first_name like 's%';
select * from employeesfromgoogle where first_name like '%n';
select * from employeesfromgoogle where first_name like 's%n';

select * from employeesfromgoogle where first_name like 'j%' and salary between 3000 and 5000;

# --underscore _
select * from employeesfromgoogle where first_name like '___';
select * from employeesfromgoogle where first_name like 's____';
select * from employeesfromgoogle where first_name like 's____%';








