SELECT * FROM EMPLOYEES WHERE SALARY IN(5000, 7000, 11000);

SELECT * FROM COUNTRIES WHERE COUNTRY_ID IN('EG', 'FR', 'IL');

SELECT * FROM JOBS ORDER BY MAX_SALARY DESC;

SELECT * FROM JOBS WHERE JOB_TITLE LIKE '%Manager';

SELECT * FROM JOBS WHERE MIN_SALARY BETWEEN 8000 AND 15000 AND JOB_TITLE NOT LIKE '%Manager';

SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID IS NULL;

SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IS NULL;

SELECT * FROM LOCATIONS WHERE COUNTRY_ID IN('US', 'UK');

SELECT * FROM COUNTRIES WHERE REGION_ID = 1 AND COUNTRIES.COUNTRY_NAME <> 'Belgium';

SELECT FIRST_NAME || ' ' || LAST_NAME FROM EMPLOYEES;

SELECT FIRST_NAME || ' MAKES ' || SALARY FROM EMPLOYEES;

SELECT FIRST_NAME, SALARY, SALARY + 5000 FROM EMPLOYEES;

SELECT FIRST_NAME, SALARY, SALARY - 2000 FROM EMPLOYEES;

SELECT FIRST_NAME, SALARY * 12 FROM EMPLOYEES;

SELECT UPPER(FIRST_NAME) FROM EMPLOYEES;

SELECT LOWER(FIRST_NAME), LENGTH(FIRST_NAME) FROM EMPLOYEES;

SELECT FIRST_NAME FROM EMPLOYEES WHERE LENGTH(FIRST_NAME) = 6;

SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%a%' OR FIRST_NAME LIKE '%A%';

SELECT FIRST_NAME FROM EMPLOYEES WHERE UPPER(FIRST_NAME) LIKE '%A%';
SELECT FIRST_NAME FROM EMPLOYEES WHERE LOWER(FIRST_NAME) LIKE '%a%';

SELECT FIRST_NAME, SALARY, ROUND(SALARY/30) AS "DAILY WAGE" FROM EMPLOYEES;

SELECT COUNT(FIRST_NAME) FROM EMPLOYEES;

SELECT COUNT(DEPARTMENT_ID) FROM DEPARTMENTS;

SELECT COUNT(COMMISSION_PCT) FROM EMPLOYEES;

SELECT MAX(SALARY), MIN(SALARY), AVG(SALARY), SUM(SALARY) FROM EMPLOYEES;

SELECT COUNT(*) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

SELECT JOB_ID, COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID;

SELECT DEPARTMENT_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, SUM(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

SELECT JOB_ID, SUM(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;

SELECT DEPARTMENT_ID,
       SUM(SALARY),
       MAX(SALARY),
       MIN(SALARY),
       AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;

SELECT DEPARTMENT_ID,
       SUM(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY) > 10000;

SELECT DEPARTMENT_ID,
       AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 10000;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY > 10000
GROUP BY JOB_ID;

SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
WHERE SALARY > 10000
GROUP BY JOB_ID;

SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
WHERE SALARY > 10000
GROUP BY JOB_ID
HAVING COUNT(*) = 1;

SELECT COUNTRY_ID, COUNT(*)
FROM LOCATIONS
GROUP BY COUNTRY_ID
HAVING COUNT(*) > 3;

SELECT FIRST_NAME, COUNT(*)
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*) > 1;













