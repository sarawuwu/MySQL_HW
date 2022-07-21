-- 作業1
-- 1
SELECT * FROM dept;

-- 2
SELECT EMPNO,ENAME,JOB,HIREDATE FROM emp;

-- 3
SELECT distinct JOB FROM emp;

-- 4
SELECT EMPNO 'Emp#',ENAME Employee,JOB Job,HIREDATE 'Hire Date' FROM emp;

-- 5
SELECT concat(ENAME,", ",JOB) 'Employee and Title' from emp;


