alter session set nls_date_format = 'DD-MON-RR';
alter session set nls_date_language = 'AMERICAN';

select ename, TO_CHAR(hiredate, 'DDTH "of" MONTH')
from employees
/
