UPDATE emp_copy
SET deptno = null
WHERE empno IN (1013, 1014)
/

SELECT *
FROM emp_copy
/

rollback
/


SELECT *
FROM emp_copy
/
