select ename, CASE deptno when 10 THEN 1.1*sal
                          when 20 THEN 1.2*sal
                   else sal END "NEW_SAL"
from employees
/
