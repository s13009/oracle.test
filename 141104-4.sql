INSERT INTO dept_copy
SELECT deptno+1, dname, loc
FROM departments
/

select *
from dept_copy
/

rollback
/
