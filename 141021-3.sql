select ename, sal, comm, COALESCE(sal+comm, comm, sal)
from employees
/
