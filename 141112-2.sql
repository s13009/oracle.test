create table emp2(empno primary key, ename not null, sal, deptno)
as select empno, ename, sal, deptno
FROM employees
/

create table v_emp
as select empno, ename, sal, deptno
FROM emp2
/

DELETE v_emp
where empno = 1014
/

UPDATE v_emp
SET sal = 30000
where empno = 1013
/

INSERT INTO v_emp
(empno, ename, sal, deptno)
VALUES
(1030, '山口', 200000, null)
/

SELECT *
FROM v_emp
/

rollback
/

DROP table v_emp
/

