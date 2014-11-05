UPDATE emp_copy
SET deptno = null
WHERE empno IN (1013, 1014)
/

rollback
/
