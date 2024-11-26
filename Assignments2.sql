USE hr;

SELECT first_name, last_name, UPPER(email) AS Email
FROM employees;

SELECT first_name, LOWER(last_name)
FROM employees;

SELECT first_name, last_name, salary, ROUND(salary * 2) AS Rounded_salary
FROM employees;

SELECT first_name, last_name, salary ,FLOOR(salary) AS Floored_salary
FROM employees
WHERE salary < 5000;

SELECT first_name, last_name, salary
FROM employees;