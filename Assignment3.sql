USE hr;

SELECT *
FROM employees;

SELECT hire_date, DAYOFWEEK(hire_date) AS day_of_week, MOD(DAYOFWEEK(hire_date), 7) AS modulus
FROM employees;

SELECT first_name, last_name, ABS(salary - 10000) AS Absoult_salary
FROM employees;

SELECT CONCAT(first_name," ",LOWER(last_name)) AS Name_Concatination
FROM employees;

SELECT
CASE
	WHEN salary >= 10000 THEN UPPER(first_name)
    ELSE first_name
END AS Name, salary
FROM employees;

SELECT first_name, job_id, ROUND(salary) AS salary 
FROM employees; 

SELECT CONCAT(first_name, " earn ", salary," and paying tax ", ROUND(salary /10)) AS detail
FROM employees;

USE hr;

SELECT * 
FROM employees;

SELECT job_id, MAX(salary) AS Maximum, MIN(salary) AS Minimum
FROM employees
GROUP BY job_id;

