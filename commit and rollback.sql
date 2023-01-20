set autocommit = 0;

select * from employeesfromgoogle;

commit;

update employeesfromgoogle set salary = 3700 where employee_id = 198;

rollback; # --->Donald's salary was updated to 3700, and after rollback it went back to the original salary 2600.

delete from employeesfromgoogle where job_id = 'ST_CLERK';

rollback; # ---> job_id  ~ ST_CLERK is reverted back

update employeesfromgoogle set manager_id = 999
where employee_id = 198;
 
commit;

rollback; # ---> even after doing the rollback, the manager_id isn't changed from 999 to the previous one, because we used commit.



