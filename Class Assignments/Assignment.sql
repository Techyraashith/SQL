USE hr;

SELECT *
FROM employees;

SELECT CONCAT(m.first_name, " ", m.last_name) AS FullName
FROM employees AS m
JOIN employees AS e ON m.employee_id = e.manager_id
GROUP BY m.employee_id, m.first_name, m.last_name
HAVING COUNT(e.employee_id) >= 4
ORDER BY FullName;	

SELECT *
FROM departments;

SELECT d.*, MIN(e.salary) AS Salary
FROM departments AS d
JOIN employees AS e ON (e.department_id = d.department_id)
GROUP BY d.department_id
HAVING MIN(e.salary) < 9000
ORDER BY d.department_id;

SELECT * 
FROM locations;

SELECT *
FROM regions;

SELECT *
FROM countries;

SELECT e.employee_id,CONCAT(e.first_name," ",e.last_name)AS FullName, e.salary, e.phone_number, d.department_name, 
l.city, l.street_address, c.country_name, r.region_name
FROM employees AS e
JOIN departments AS d ON (e.department_id = d.department_id)
JOIN locations AS l ON (d.location_id = l.location_id)
JOIN countries AS c ON (l.country_id = c.country_id)
JOIN regions AS r ON (c.region_id = r.region_id)
WHERE region_name = "Europe"
ORDER BY employee_id; 