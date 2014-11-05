UPDATE emp_copy
SET deptno = 10
WHERE deptno IS null
/

SELECT *
FROM emp_copy
/

rollback
/

SELECT *
FROM emp_copy
/
