USE hr;

	SHOW TABLES;
    SELECT * 
    FROM employees;
    
    SELECT first_name, salary, first_name
    FROM employees;
    
	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary < 20000;
    
    SELECT CURRENT_DATE() AS Today
    FROM DUAL;

	SELECT employee_id, salary, first_name AS name
    FROM employees
    WHERE salary < 20000;

	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary != 20000;

	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary != 17000;
    
    SELECT first_name, salary
    FROM employees
    WHERE salary = 10000 OR salary = 17000;
    
	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary IN (10000,17000,8800,22000);
    
	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary NOT IN (10000,17000,8800,22000);
    
	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary >= 10000 AND salary <= 24000 ;
    
	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary BETWEEN 10000 AND 20000;

	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary BETWEEN 9000 AND 12000;

	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary NOT BETWEEN 10000 AND 20000;
    
	SELECT employee_id, salary, first_name
    FROM employees
    WHERE salary NOT BETWEEN 17000 AND 24000;
	
	SELECT *
    FROM employees
    WHERE first_name = 'Alexander';

	SELECT *
    FROM employees
    WHERE first_name = 'Randall';
    
    SELECT * 
    FROM employees
    WHERE first_name LIKE 'D%';
    
	SELECT * 
    FROM employees
    WHERE first_name LIKE 'R%';
    
	SELECT * 
    FROM employees
    WHERE first_name LIKE '%a';
    
	SELECT * 
    FROM employees
    WHERE first_name LIKE 'N_e%';
    
	SELECT * 
    FROM employees
    WHERE first_name LIKE 'B_e%';
    
	SELECT * 
    FROM employees
    WHERE first_name LIKE '%h%';
	
	SELECT * 
    FROM employees
    WHERE first_name LIKE '%r%';

	SELECT * 
    FROM employees
    WHERE first_name NOT LIKE '%r%';
    
	SELECT * 
    FROM employees
    WHERE first_name NOT LIKE 'r%';
    
	SELECT * 
    FROM employees
    WHERE first_name NOT LIKE '%r';


-- Assignmen from GPT : --

SELECT *
FROM employees 
WHERE salary = 24000 ;

SELECT *
FROM employees 
WHERE salary < 17000 ;

SELECT *
FROM employees 
WHERE salary < 17000 AND department_id = 60;


SELECT *
FROM employees 
WHERE first_name != 'Bruce' AND last_name != 'Ernst';


SELECT *
FROM employees 
WHERE department_id = 60 OR department_id = 20 ;


SELECT *
FROM employees 
WHERE salary >= 10000;


SELECT first_name, last_name, salary
FROM employees 
WHERE salary < 17000;


SELECT first_name, last_name, salary
FROM employees 
WHERE salary >10000;

SELECT first_name, last_name, salary
FROM employees 
WHERE salary < 17000 AND first_name LIKE 'S%';

SELECT first_name, last_name, salary
FROM employees 
WHERE salary < 17000 AND first_name NOT LIKE 'S_a%';

SELECT * 
FROM employees;

SELECT * 
FROM employees
WHERE department_id IN(90,100,50);

SELECT * 
FROM employees
WHERE department_id NOT IN(90,100,50);


SELECT * 
FROM employees                               
WHERE department_id NOT IN(90,100,50);

-- NULL and FUNCTIONS --

SELECT * 
FROM employees
WHERE commission_pct IS NULL;

SELECT * 
FROM employees
WHERE commission_pct IS NOT NULL;


use hr;
SHOW TABLES;

-- NULL AND Function

SELECT * 
FROM employees
WHERE commission_pct IS NULL;

SELECT * 
FROM employees
WHERE commission_pct IS NOT NULL;



-- 1.Case Manipulation
SELECT UPPER(first_name) AS first_name,salary
FROM employees;

SELECT LOWER(first_name) AS first_name,salary
FROM employees;

SELECT * 
FROM employees
WHERE first_name = INITCAP('david');

-- 2.Number Function

SELECT ROUND(67.88365432,1)
FROM dual;

SELECT ROUND(89.4),ROUND(89.5),ROUND(89.7)
FROM dual;

SELECT FLOOR(89.43),FLOOR(89.5),FLOOR(89.7)
FROM dual;

SELECT CEIL(89.4),CEIL(89.5),CEIL(89.7)
FROM dual;

SELECT ABS(-9),ABS(9)
FROM dual;

SELECT SIGN(-10),SIGN(10) AS sign
FROM dual;

SELECT MOD(15,2) AS Reaminder
FROM dual;

 -- 3 Date Functions

USE hr;

SELECT DATE_ADD("2024-04-15", INTERVAL 2 MONTH) AS Calculating_Date
FROM dual ;

