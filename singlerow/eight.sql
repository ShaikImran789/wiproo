SELECT SUBSTR(last_name, 1, 8) ||
       ' ' ||
       RPAD('*', TRUNC(salary / 1000), '*') AS EMPLOYEES_AND_THEIR_SALARIES
FROM employees
ORDER BY salary DESC;