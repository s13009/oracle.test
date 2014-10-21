select ename, sal, comm, NVL2(comm, sal+comm, sal)
from employees
/
