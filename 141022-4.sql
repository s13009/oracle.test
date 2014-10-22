select MAX(AVG(sal))
from employees
GROUP BY deptno
ORDER BY deptno
/
