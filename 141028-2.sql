select empno,ename,deptno,dname
from employees LEFT OUTER JOIN departments
USING (deptno)
/
