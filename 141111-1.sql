create table dept1 (
deptno number(4)
  CONSTRAINT dept1_deptno_pk PRIMARY KEY,
  dname varchar2(10) NOT NULL,
  loc varchar(10))
/
INSERT INTO dept1(deptno, dname)
VALUES(10,20)
/
INSERT INTO dept1(deptno, dname)
VALUES(10,20)
/
INSERT INTO dept1(deptno, dname)
VALUES(10,null)
/
DELETE FROM dept1
/
