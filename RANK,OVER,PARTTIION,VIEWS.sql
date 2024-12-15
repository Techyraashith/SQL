USE hr;

SELECT *
FROM employees;

SELECT CONCAT(first_name," ",last_name) AS Name, salary, SUM(salary) OVER() AS Total_salary_of_all_employees
FROM employees;

SELECT CONCAT(first_name," ",last_name) AS Name, 
salary, department_id, 
SUM(salary) OVER(PARTITION BY department_id) AS Total_salary_of_the_department
FROM employees;

SELECT CONCAT(first_name," ",last_name) AS Name,
salary, SUM(salary) OVER (ORDER BY employee_id) AS CUMMULATIVE_SUM
FROM employees;

SELECT 
	CONCAT(first_name," ",last_name) AS Name,
	salary, 
    department_id, 
	SUM(salary) OVER (PARTITION BY department_id ORDER BY employee_id) AS Cummilative_Sum_of_each_department 
FROM employees;	

SELECT
	employee_id,
	CONCAT(first_name," ",last_name) AS Name,
    salary,
    RANK () OVER(ORDER BY salary DESC) AS Rank_no
FROM employees;

SELECT
	employee_id,
	CONCAT(first_name," ",last_name) AS Name,
    salary,
    department_id,
    RANK () OVER(PARTITION BY department_id ORDER BY salary DESC) AS Rank_no
FROM employees;


SELECT
	employee_id,
	CONCAT(first_name," ",last_name) AS Name,
    salary,
    RANK () OVER(ORDER BY salary DESC) AS Rank_no
FROM employees;

WITH New AS (
SELECT
	employee_id,
	CONCAT(first_name," ",last_name) AS Name,
    salary,
    RANK () OVER(ORDER BY salary DESC) AS Rank_no
FROM employees
)

SELECT *
FROM New
WHERE Rank_no = 2;

CREATE VIEW ANS_1 AS(
SELECT
	employee_id,
	CONCAT(first_name," ",last_name) AS Name,
    salary,
    department_id,
    RANK () OVER(PARTITION BY department_id ORDER BY salary DESC) AS Rank_no
FROM employees
);

SELECT *
FROM ANS_1;