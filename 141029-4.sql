select deptno,dname,avg(sal)
from employees JOIN departments
USING (deptno)
GROUP BY deptno,dname
HAVING avg(sal) >
                (select avg(sal)
                 from employees)
/
