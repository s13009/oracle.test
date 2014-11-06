INSERT INTO dept_copy
(deptno, dname, loc)
VALUES
(70, '海外', '浦添')
/

SAVEPOINT MAENO
/

INSERT INTO dept_copy
(deptno, dname, loc)
VALUES
(80, '製造', 'うるま')
/

SELECT deptno, dname, loc
FROM dept_copy
/

rollback to SAVEPOINT MAENO
/

SELECT deptno, dname, loc
FROM dept_copy
/
