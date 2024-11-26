USE hr;

SELECT UPPER(first_name) AS Name
FROM employees;

SELECT * 
FROM employees;

SELECT LOWER(email) AS Email
FROM employees;

SELECT salary, ROUND(salary) AS Rounded_salary, first_name
FROM employees;

SELECT FLOOR(245670.75) AS Floored
FROM dual;

SELECT salary, FLOOR(salary) AS floored_salary, salary
FROM employees;

SELECT salary, MOD(salary,1000) AS Modulus_salary
FROM employees;

SELECT salary, SIGN(salary) AS salary
FROM employees;

SELECT salary, ABS(salary) AS absolute_salary
FROM employees;

SELECT ABS(-10) AS absoult_number
FROM dual;