alter session set nls_date_format = 'RR-MM-DD';
alter session set nls_date_language = 'JAPANESE';

select TO_DATE('11-01-01', 'RR-MM-DD')
from dual
/
