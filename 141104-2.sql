INSERT INTO departments (deptno,dname,loc)
VALUES (60,'経理',null)
/

select deptno,dname,loc
from departments
/

rollback
/

select deptno,dname,loc
from departments
/
