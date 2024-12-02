CREATE DATABASE Food;
USE Food;

CREATE TABLE Menu(
Product_id INT PRIMARY KEY AUTO_INCREMENT,
Product_name VARCHAR(50) NOT NULL,
Product_price INT NOT NULL
);

INSERT INTO Menu(Product_name,Product_price)VALUES('Briyani',250);
INSERT INTO Menu(Product_name,Product_price)VALUES('Parota',80);
INSERT INTO Menu(Product_name,Product_price)VALUES('Chicken BBQ',150);
INSERT INTO Menu(Product_name,Product_price)VALUES('Grill',280);
INSERT INTO Menu(Product_name,Product_price)VALUES('Chappathi',90);
INSERT INTO Menu(Product_name,Product_price)VALUES('Idly',100);

SELECT *
FROM Menu;

-- Table no 2 --

CREATE TABLE Sales(
Product_id INT, 
    FOREIGN KEY (Product_id) REFERENCES Menu(Product_id),	
Quantity VARCHAR(50) NOT NULL,
Total_price INT NOT NULL
);

DESC Sales;

INSERT INTO Sales VALUE(1,'2plate','500');
INSERT INTO Sales VALUE(2,'10plate','800');
INSERT INTO Sales VALUE(3,'6plate','600');
INSERT INTO Sales VALUE(4,'5plate','750');
INSERT INTO Sales VALUE(5,'7plate','630');
INSERT INTO Sales VALUE(6,'4plate','1120');

SELECT * 
FROM Menu;

SELECT * 
FROM Sales;
