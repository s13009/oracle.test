INSERT INTO dept_copy
(deptno, dname, loc)
VALUES
(50, '教育', '大手町')
/

INSERT INTO dept_copy
(deptno, dname, loc)
VALUES
(60, 'システム', '横浜')
/

SELECT deptno, dname, loc
FROM dept_copy
/

rollback
/

SELECT deptno, dname, loc
FROM dept_copy
/

INSERT INTO dept_copy
(deptno, dname, loc)
VALUES
(50, '教育', '大手町')
/

INSERT INTO dept_copy
(deptno, dname, loc)
VALUES
(60, 'システム', '横浜')
/

SELECT deptno, dname, loc
FROM dept_copy
/

COMMIT
/

DELETE INSERT INTO dept_copy
/

SELECT deptno, dname, loc
FROM dept_copy
/
