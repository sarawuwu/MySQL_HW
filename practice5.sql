-- 作業五

-- 1
SELECT e.ENAME,e.DEPTNO,d.DNAME,d.LOC
FROM demo.emp e join demo.dept d on e.DEPTNO=d.DEPTNO;

-- 2
SELECT e.ENAME,e.COMM,d.DNAME,d.LOC
FROM demo.emp e join demo.dept d on e.DEPTNO=d.DEPTNO
WHERE e.COMM IS NOT NULL AND e.COMM > 0;

-- 3
SELECT e.ENAME,d.DNAME
FROM demo.emp e join demo.dept d on e.DEPTNO=d.DEPTNO
WHERE e.ENAME LIKE'%A%';

-- 4
SELECT e.ENAME,e.JOB,e.DEPTNO,d.DNAME
FROM demo.emp e join demo.dept d on e.DEPTNO=d.DEPTNO
WHERE d.LOC='DALLAS';

-- 5
SELECT e.ENAME AS Employee,e.EMPNO as 'Emp#',e.ENAME AS Manager,e.MGR as 'Mgr#'
FROM demo.emp e 
join demo.emp e1 on e.MGR=e1.EMPNO;

-- 6
DESCRIBE salgrade;
SELECT e.ENAME,e.JOB,d.DNAME,e.SAL,s.GRADE
FROM demo.emp e 
	join demo.dept d on e.DEPTNO=d.DEPTNO
	join demo.salgrade s on e.SAL between s.LOSAL AND s.HISAL;

-- 7
SELECT e.ENAME as Employee,e.HIREDATE as 'Emp Hiredate',e1.ENAME as Manager,e1.HIREDATE as 'Mgr Hiredate'
FROM demo.emp e join demo.emp e1 on e.MGR=e1.EMPNO
WHERE e.HIREDATE<e1.HIREDATE;

-- 8
SELECT d.DNAME AS dname,d.LOC as Ioc,COUNT(EMPNO) as 'Number of People',ROUND(AVG(IFNULL(e.SAL,0)),2) as Salary 
FROM demo.emp e join demo.dept d on e.DEPTNO=d.DEPTNO
GROUP BY d.DNAME;


