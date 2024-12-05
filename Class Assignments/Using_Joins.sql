USE hr;

SELECT *
FROM employees; 

SELECT *
FROM departments;

SELECT *
FROM jobs;

SELECT * 
FROM locations;

SELECT * 
FROM countries;

SELECT *
FROM regions;

SELECT e.first_name, j.job_title, d.department_name, l.city, c.country_name, r.region_name
FROM employees AS e
JOIN departments AS d ON (e.department_id = d.department_id)
JOIN jobs AS j ON (e.job_id = j.job_id)
JOIN locations AS l ON (l.location_id = d.location_id)
JOIN countries AS c ON (l.country_id = c.country_id)
JOIN regions AS r ON (c.region_id = r.region_id);