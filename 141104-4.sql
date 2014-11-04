create table dept_copy as select* from departments where 0 = 1
/

INSERT INTO dept_copy
SELECT deptno+1, dname, loc
FROM departments;

select *
from dept_copy
/
