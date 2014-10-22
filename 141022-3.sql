select deptno, job, count(*), AVG(sal)
from employees
GROUP BY deptno, job
ORDER BY deptno, job
/
