-- 作業六

-- 1
SELECT ENAME,HIREDATE
FROM demo.emp
WHERE DEPTNO = (SELECT DEPTNO FROM demo.emp WHERE ENAME='BLAKE'); 

-- 2
SELECT ENAME,HIREDATE
FROM demo.emp
WHERE HIREDATE > (SELECT HIREDATE FROM demo.emp WHERE ENAME='BLAKE');

-- 3
SELECT EMPNO,ENAME,SAL
FROM demo.emp
WHERE SAL>(SELECT AVG(IFNULL(SAL,0)) FROM demo.emp)
ORDER BY SAL DESC;

-- 4
SELECT EMPNO,ENAME
FROM demo.emp
WHERE DEPTNO in (SELECT DEPTNO
				 FROM demo.emp 
				 WHERE ENAME LIKE '%T%');

-- 5
SELECT e.ENAME,e.DEPTNO,e.JOB
FROM demo.emp e JOIN demo.dept d on e.DEPTNO=d.DEPTNO
WHERE d.LOC='Dallas';

-- 6
SELECT ENAME,SAL
FROM demo.emp
WHERE ENAME IN(SELECT e.ENAME
				FROM demo.emp e join demo.emp e1 on e.MGR=e1.EMPNO
				WHERE e1.ENAME='KING');
                

SELECT ENAME,SAL
FROM demo.emp
WHERE ENAME IN(SELECT e.ENAME
				FROM demo.emp e join demo.emp e1 on e.MGR=e1.EMPNO
				WHERE e1.ENAME='KING');


-- 7
SELECT d.DEPTNO,e.ENAME,e.JOB
FROM demo.emp e join demo.dept d ON e.DEPTNO=d.DEPTNO
WHERE d.DNAME='Sales';

-- 8
SELECT EMPNO,ENAME,SAL
FROM demo.emp
WHERE SAL>(SELECT avg(SAL) FROM demo.emp) AND 
		DEPTNO in (SELECT DEPTNO
				 FROM demo.emp 
				 WHERE ENAME LIKE '%T%') ;

-- 9
SELECT e.ENAME,e.DEPTNO,e.SAL 
FROM demo.emp e JOIN (SELECT * FROM demo.emp 
							WHERE COMM>0) e1 	
WHERE e.EMPNO<>e1.EMPNO AND e.DEPTNO=e1.DEPTNO AND e.SAL=e1.SAL ; 


-- 10
SELECT e.ENAME,e.DEPTNO,e.SAL 
FROM demo.emp AS e JOIN (SELECT * FROM demo.dept WHERE LOC='Dallas') as d ON e.DEPTNO = d.DEPTNO 
                 JOIN demo.emp e1
WHERE e.EMPNO <> e1.EMPNO AND e.SAL=e1.SAL AND ifnull(e.COMM,0)= ifnull(e1.COMM,0);

-- 11
SELECT e.ENAME,e.HIREDATE,e.SAL
FROM demo.emp as e JOIN (SELECT* FROM demo.emp where ENAME='Scott') as e1 on e.DEPTNO = e1.DEPTNO
where e.ENAME<>e1.ENAME AND e.SAL=e1.SAL AND ifnull(e.COMM,0)= ifnull(e1.COMM,0);


-- 12
SELECT ENAME,HIREDATE,SAL
FROM demo.emp
WHERE SAL> ALL(SELECT SAL FROM demo.emp where job='clerk')
ORDER BY SAL DESC;
