#matrix qurey
SELECT job,
       SUM(DECODE(deptno, 10, sal, 0)) AS "Dept 10",
       SUM(DECODE(deptno, 20, sal, 0)) AS "Dept 20",
       SUM(DECODE(deptno, 30, sal, 0)) AS "Dept 30",
       SUM(sal) AS "Total Salary"
FROM emp
GROUP BY job;
#using case and decode
SELECT job,
       SUM(CASE WHEN deptno = 10 THEN sal ELSE 0 END) AS "Dept 10",
       SUM(CASE WHEN deptno = 20 THEN sal ELSE 0 END) AS "Dept 20",
       SUM(CASE WHEN deptno = 30 THEN sal ELSE 0 END) AS "Dept 30",
       SUM(sal) AS "Total Salary"
FROM emp
GROUP BY job;


#set operations
SELECT TO_CHAR(deptno) AS deptno,
       NULL AS job,
       SUM(sal) AS total_salary
FROM emp
GROUP BY deptno

UNION ALL

SELECT NULL AS deptno,
       job,
       SUM(sal) AS total_salary
FROM emp
GROUP BY job

UNION ALL

SELECT NULL AS deptno,
       'Total Salary' AS job,
       SUM(sal) AS total_salary
FROM emp;

#set operation using union
SELECT job, deptno
FROM emp
WHERE deptno = 20

UNION

SELECT job, deptno
FROM emp
WHERE deptno = 10

UNION

SELECT job, deptno
FROM emp
WHERE deptno = 30;