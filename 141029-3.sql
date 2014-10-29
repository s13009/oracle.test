select empno,ename,sal,deptno
from employees
where sal >=
           (select sal
            from employees
            where empno = 1003)
AND deptno =
           (select deptno
            from departments
            where dname = '営業')
/
