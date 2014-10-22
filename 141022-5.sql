select deptno, job, count(*), AVG(sal)
from employees
GROUP BY deptno, job
HAVING count(*) >= 2
/
