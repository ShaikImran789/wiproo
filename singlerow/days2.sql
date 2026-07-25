SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission.') AS COMM
FROM employees;