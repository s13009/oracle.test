select empno, ename, deptno
from employees
where deptno NOT IN (10,20)
/
