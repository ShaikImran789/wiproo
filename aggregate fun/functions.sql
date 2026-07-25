SELECT MAX(sal) AS Maximum,
       MIN(sal) AS Minimum,
       SUM(sal) AS Sum,
       ROUND(AVG(sal)) AS Average
FROM emp;

SELECT job,
       MIN(sal) AS Minimum,
       MAX(sal) AS Maximum,
       SUM(sal) AS Sum,
       ROUND(AVG(sal)) AS Average
FROM emp
GROUP BY job;

SELECT job,
       COUNT(*) AS Number_of_Employees
FROM emp
GROUP BY job;

SELECT COUNT(*) AS "Number of Managers"
FROM emp
WHERE job = 'MANAGER';

SELECT MAX(sal) - MIN(sal) AS DIFFERENCE
FROM emp;

SELECT mgr AS Manager_Number,
       MIN(sal) AS Lowest_Salary
FROM emp
WHERE mgr IS NOT NULL
GROUP BY mgr
HAVING MIN(sal) > 2000
ORDER BY Lowest_Salary DESC;

SELECT COUNT(*) AS "Total Employees",
       SUM(CASE WHEN EXTRACT(YEAR FROM hiredate) = 1980 THEN 1 ELSE 0 END) AS "Hired in 1980",
       SUM(CASE WHEN EXTRACT(YEAR FROM hiredate) = 1981 THEN 1 ELSE 0 END) AS "Hired in 1981",
       SUM(CASE WHEN EXTRACT(YEAR FROM hiredate) = 1982 THEN 1 ELSE 0 END) AS "Hired in 1982"
FROM emp;