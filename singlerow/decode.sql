SELECT last_name,
       job_id,
       DECODE(job_id,
              'ST_MAN', 'A',
              'ST_CLERK', 'B',
              'SA_REP', 'C',
              'ST_CLERK', 'D',
              'F') AS GRADE
FROM employees;