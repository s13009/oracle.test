select empno,ename,deptno,dname
FROM employees JOIN departments
USING (deptno)
/
