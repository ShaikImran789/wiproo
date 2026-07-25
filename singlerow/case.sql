SELECT last_name,
       job_id,
       CASE job_id
           WHEN 'PRESIDENT' THEN 'A'
           WHEN 'MANAGER' THEN 'B'
           WHEN 'SALESMAN' THEN 'C'
           WHEN 'CLERK' THEN 'D'
       END AS GRADE
FROM emp;