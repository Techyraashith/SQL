USE hr;

SELECT *
FROM employees;

SELECT department_id, COUNT(department_id) AS department_count
FROM employees	
GROUP BY department_id
HAVING COUNT(department_id) > 4;

SELECT * 
FROM employees
WHERE department_id = '30';

-- Table Creation -- 

CREATE DATABASE details;
USE details;

DROP TABLE student;


CREATE TABLE Students(
	Roll_no INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(30) NOT NULL,
    Phone_no CHAR(10) UNIQUE,
    DOB DATE NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M','F','O')),
    email VARCHAR(100) NOT NULL,
    Course VARCHAR(100) CHECK(Course IN ('Full Stack','Front End','Back End','Data Science')) DEFAULT 'Full Stack'
);

DESC Students;

INSERT INTO Students(Name,Phone_no,DOB,Gender,email) VALUES ('Steve','9876543210','1974-06-01','M','steverogers@gmail.com');

SELECT *
FROM Students;
	