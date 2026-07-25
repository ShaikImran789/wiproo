SELECT last_name,
       TO_CHAR(hire_date, 'FMDay, the FMDDth of FMMonth, YYYY') AS hire_date,
       TO_CHAR(
           NEXT_DAY(ADD_MONTHS(hire_date, 6), 'MONDAY'),
           'FMDay, the FMDDth of FMMonth, YYYY'
       ) AS REVIEW
FROM employees;