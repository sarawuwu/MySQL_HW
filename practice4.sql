-- 作業四

-- 1
SELECT ROUND(MAX(SAL)) AS Maximum,ROUND(min(SAL)) as Minimum,ROUND(sum(SAL)) as Sum,ROUND((sum(SAL)/count(*))) as Average
FROM demo.emp;

-- 2
SELECT JOB,MAX(SAL),MIN(SAL),sum(SAL),avg(SAL)
FROM demo.emp
group by JOB;

-- 3
SELECT JOB,count(*)
FROM demo.emp
group by JOB;

-- 4
SELECT count(distinct MGR) as 'Number of Managers'
from demo.emp;

-- 5
SELECT MAX(SAL)-MIN(SAL) AS DIFFERENCE
FROM demo.emp;

-- 6
SELECT MGR,MIN(SAL)
FROM demo.emp
GROUP BY MGR
HAVING MGR IS NOT NULL AND MIN(SAL)>1000
ORDER BY MIN(SAL) desc;

-- 7
SELECT YEAR(HIREDATE) AS HYear, count(*) AS 'Number of people'
FROM demo.emp
WHERE YEAR(HIREDATE) in (2010,2011,2012,2013)
GROUP BY YEAR(HIREDATE);



 
