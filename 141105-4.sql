UPDATE emp_copy
SET job = (SELECT job FROM employees WHERE empno = 1010),
    sal = (SELECT sal FROM employees WHERE empno = 1010)
    WHERE empno = (SELECT empno FROM employees WHERE ename = '加藤')
/

SELECT *
FROM emp_copy
/

rollback
/


SELECT *
FROM emp_copy
/
