select ename, sal, comm, NVL(sal+comm, sal)
from employees
/
