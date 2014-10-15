select empno, ename, yomi
from employees
where UPPER(yomi) = 'TAKAHASHI'
/
