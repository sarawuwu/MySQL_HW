-- 作業七


desc my_emp;

-- 1
INSERT INTO my_emp
VALUES(1,'Patel','Ralph','rpatel',795);

-- 2
INSERT INTO my_emp(ID,LAST_NAME,FIRST_NAME,USERID,SALARY)
VALUES(2,'Dancs','Betty','bdancs',860);

-- 3
INSERT INTO my_emp
VALUES(3,'Biri','Ben','bbiri',1100),(4,'Newman','Chad','cnewman',750);

select*
from my_emp;

SET SQL_SAFE_UPDATES=0;


-- 4
UPDATE my_emp
SET LAST_NAME='Drexler'
WHERE ID=3;

-- 5
UPDATE my_emp
SET SALARY=1000
WHERE SALARY<900;

-- 6
DELETE FROM my_emp
WHERE LAST_NAME='Dancs' and FIRST_NAME='Betty';

-- 7
Start transaction;
UPDATE my_emp
SET SALARY=SALARY*1.1;
SAVEPOINT T1;
DELETE FROM my_emp;
ROLLBACK TO T1;
COMMIT;
select* from my_emp;
