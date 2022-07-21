-- 作業3

-- 1
SELECT curdate();

-- 2
SELECT EMPNO,ENAME,SAL,round(SAL*1.15) AS 'New Salary'
FROM emp;

-- 3
SELECT EMPNO,ENAME,SAL,round(SAL*1.15) AS 'New Salary', round((SAL*1.15)- SAL) AS Increase
FROM emp;

-- 4
SELECT ENAME,HIREDATE,
		DATE_FORMAT(
			adddate(
				adddate(HIREDATE,INTERVAL 6 MONTH),INTERVAL 
					MOD(7-WEEKDAY(adddate(HIREDATE,INTERVAL 6 MONTH)),7) DAY) 
		,'%W,the %D of %M') AS REVIEW
FROM demo.emp;

-- 5
SELECT ENAME,round(DATEDIFF(CURDATE(),HIREDATE)/365*12) as 'MONTHS_WORKED'
FROM demo.emp;

-- 6
SELECT concat(ENAME,' earns ',SAL,' monthly but wants ',SAL*3) AS 'Dream Salaries'
FROM emp;

-- 7
SELECT ENAME,lpad(SAL,15,'$') AS SALSRY
FROM emp;

-- 8
SELECT ENAME,HIREDATE,weekday(HIREDATE)+1 as 'DAY'
FROM emp
ORDER BY DAY;

-- 9
SELECT ENAME,ifnull(COMM,'No Commission') as COMM
FROM emp;

-- 10
SELECT concat(ENAME,repeat('*',sal/100)) AS 'EMPLOYEE_AND_THEIR_SALARIES'
FROM demo.emp
ORDER BY SAL DESC;

