select empno,ename,dname
from employees
NATURAL JOIN departments
WHERE deptno IN(10,20)
/
