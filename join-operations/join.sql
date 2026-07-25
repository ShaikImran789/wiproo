#Natural Join
SELECT empno,
       ename,
       sal,
       dname,
       loc
FROM emp
NATURAL JOIN dept;

#Equi Join
#1
SELECT e.job,
       e.mgr,
       e.sal,
       e.comm,
       d.dname
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
WHERE e.job = 'SALESMAN';

#2
SELECT e.ename,
       e.job,
       e.deptno,
       d.dname
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
WHERE d.loc = 'DALLAS';

#self join
SELECT e.ename AS "Employee",
       e.empno AS "Emp#",
       m.ename AS "Manager",
       m.empno AS "Mgr#"
FROM emp e
JOIN emp m
ON e.mgr = m.empno;

#outer join
SELECT e.ename AS "Employee",
       e.empno AS "Emp#",
       m.ename AS "Manager",
       m.empno AS "Mgr#"
FROM emp e
LEFT OUTER JOIN emp m
ON e.mgr = m.empno
ORDER BY e.empno;

#Non-Equi Join
SELECT e.ename,
       e.job,
       d.dname,
       e.sal,
       s.grade
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
JOIN salgrade s
ON e.sal BETWEEN s.losal AND s.hisal;


#Self Join with Outer Join:
SELECT e.ename AS "Employee",
       e.hiredate AS "Employee Hire Date",
       m.ename AS "Manager",
       m.hiredate AS "Manager Hire Date"
FROM emp e
JOIN emp m
ON e.mgr = m.empno
WHERE e.hiredate < m.hiredate;

#USING Clause
SELECT empno,
       ename,
       dname,
       loc
FROM emp
JOIN dept
USING (deptno)
WHERE job = 'CLERK';

#ON Clause
SELECT e.ename,
       e.sal,
       e.mgr,
       d.dname
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
WHERE e.sal > 2000;

#LEFT OUTER JOIN
SELECT e.empno,
       e.ename,
       e.job,
       e.deptno,
       d.dname,
       d.loc
FROM emp e
LEFT OUTER JOIN dept d
ON e.deptno = d.deptno;

#RIGHT OUTER JOIN
SELECT e.ename,
       d.dname
FROM emp e
RIGHT OUTER JOIN dept d
ON e.deptno = d.deptno;

#FULL OUTER JOIN
SELECT e.empno,
       d.dname,
       d.loc
FROM emp e
FULL OUTER JOIN dept d
ON e.deptno = d.deptno;