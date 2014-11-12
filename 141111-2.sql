 create table emp1 (
   empno number(4)
   CONSTRAINT emp1_empno_pk PRIMARY KEY,
   ename varchar2(10) CONSTRAINT emp1_ename_nn NOT NULL,
   deptno number(4),
   CONSTRAINT emp1_dept1_deptno_fk FOREIGN KEY (deptno)
   REFERENCES departments(deptno))
/

INSERT INTO emp1(empno,ename)
VALUES(10,20)
/
INSERT INTO emp1(empno,ename)
VALUES(10,20)
/
INSERT INTO emp1(empno,ename)
VALUES(10,null)
/
INSERT INTO emp1(empno,ename,deptno)
VALUES(20,20,100)
/
drop table emp1
/

