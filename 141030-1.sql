select deptno,empno,ename
from employees
where deptno=10 OR deptno=20
UNION
select deptno,empno,ename
from employees
where deptno=20 OR deptno=30
/
