UPDATE emp_copy
SET deptno = 10
WHERE deptno IS null
/

rollback
/
