CREATE TABLE Categories(
Category_id INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(30) NOT NULL,
Type VARCHAR (30) NOT NULL 
);

CREATE TABLE Products (
    Product_id INT AUTO_INCREMENT PRIMARY KEY,
    Product_name VARCHAR(50) NOT NULL,
    Product_Price INT NOT NULL,
    Category_id INT NOT NULL,
    Product_Brand VARCHAR(50) NOT NULL,
    FOREIGN KEY (Category_id) REFERENCES Categories(Category_id)
);

CREATE TABLE Customers (
Customer_id INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
Phone_no VARCHAR(10) NOT NULL,
Email VARCHAR(100) NOT NULL,
ADDRESS VARCHAR(200) NOT NULL 
);

CREATE TABLE Orders (
Order_id INT PRIMARY KEY AUTO_INCREMENT,
Customer_id INT NOT NULL,
Amount INT NOT NULL,
Order_date date NOT NULL,
Delivery_address VARCHAR(200) NOT NULL,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);


