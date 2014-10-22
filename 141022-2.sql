select deptno,count(*), AVG(sal)
from employees
GROUP BY deptno
ORDER BY deptno
/
