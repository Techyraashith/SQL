USE hr;
SELECT DATE_FORMAT(CURDATE(), '%d') AS day
FROM dual;

SELECT DATE_FORMAT(CURDATE(), '%Y') AS year
FROM dual;

SELECT DATE_FORMAT(CURDATE(),'%M') AS Month
FROM dual;

SELECT DATE_FORMAT(CURDATE(), '%W') AS day_name
FROM dual;

SELECT DATE_FORMAT(CURDATE(), '%a') AS day_short
FROM dual;

SELECT DAYOFWEEK(CURDATE()) AS day_of_week
FROM dual;

SELECT STR_TO_DATE('FEB-11-2000', '%b-%d-%Y') AS parsed_date
FROM dual;
SELECT STR_TO_DATE('2024-9-30', '%Y-%m-%d') AS parsed_date
FROM dual;	

SELECT DISTINCT first_name
FROM employees;

SELECT CONCAT(first_name," ",last_name) AS Name
FROM employees;

SELECT GREATEST(686882,4553,655,27765787,7336,8338,1234,5654346) As Grestest_value
FROM dual;

SELECT LEAST(27765787,733698,801338,0900987,12876534,5654346) AS Least_value
FROM dual;

SELECT *
FROM employees
ORDER BY salary;

SELECT *
FROM employees
ORDER BY salary DESC;


SELECT first_name, salary
FROM employees
ORDER BY salary DESC, first_name;


SELECT first_name, salary
FROM employees
ORDER BY salary DESC, first_name DESC;

SELECT * 
FROM employees;

SELECT first_name, salary, department_id,
CASE
	WHEN department_id = 90  THEN 'High Range'
    WHEN department_id < 90  THEN 'Middle Range'
    ELSE 'Lower Range'
END AS Employees_Range
FROM employees;

