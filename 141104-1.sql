INSERT INTO departments (deptno,dname,loc)
VALUES (50,'教育','大手町')
/

select deptno,dname,loc
from departments
/

rollback
/

select deptno,dname,loc
from departments
/
