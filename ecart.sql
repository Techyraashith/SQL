CREATE TABLE Categories(
Category_id INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(10) NOT NULL,
Type VARCHAR (10) NOT NULL 
);

CREATE TABLE Products (
    Product_id INT AUTO_INCREMENT PRIMARY KEY,
    Product_name VARCHAR(20) NOT NULL,
    Product_Price INT NOT NULL,
    Category_id INT NOT NULL,
    FOREIGN KEY (Category_id) REFERENCES Categories(Category_id)
);

CREATE TABLE Customers (
Customer_id INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(30) NOT NULL,
Phone_no VARCHAR(10) NOT NULL,
Email VARCHAR(60) NOT NULL,
ADDRESS VARCHAR(100) NOT NULL 
);

CREATE TABLE Orders (
Delivery_id INT PRIMARY KEY AUTO_INCREMENT,
Customer_id INT NOT NULL,
Product_id INT NOT NULL,
Amount INT NOT NULL,
Order_date date NOT NULL,
Delivery_address VARCHAR(100) NOT NULL,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

CREATE TABLE Deliverd (
Delivery_id INT NOT NULL,
Delivered_date DATE NOT NULL,
Customer_id INT NOT NULL,
Product_id INT NOT NULL,
Delivered_address VARCHAR(100) NOT NULL,
City VARCHAR(10) NOT NULL,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
FOREIGN KEY (Delivery_id) REFERENCES Orders(Delivery_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);




