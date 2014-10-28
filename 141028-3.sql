select empno,ename,deptno,dname
FROM employees RIGHT OUTER JOIN departments
USING (deptno)
/
