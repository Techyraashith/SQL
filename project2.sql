USE Stylish;

-- 1
SELECT *
FROM Products
WHERE Product_Price > 1000;

-- 2
SELECT Name,Phone_no 
FROM Customers 
WHERE Name LIKE 'A%';

-- 3
SELECT *
FROM Categories 
WHERE Gender LIKE 'Men';

-- 4. Write a query to retrieve a list of all customers along with their orders (if any). Include the Customer Name, 
-- Order ID, and Order Date. Ensure all customers are included even if they haven’t placed any orders.

SELECT Customers.Name, Orders.Order_id, Orders.Order_date
FROM Customers 
LEFT JOIN Orders ON (Customers .Customer_id = Orders.Customer_id)
ORDER BY Order_id DESC;


-- 5. Write a query to fetch all orders along with the corresponding product names. 
-- Include orders only where the Delivery_date is NULL. Display Order ID, Product_name, and Order_date.

SELECT Orders.Order_ID, Products.Product_Name, Orders.Order_Date
FROM Orders
JOIN Products ON (Orders.Product_ID = Products.Product_ID);

-- 6 Write a query to display the total number of orders placed by each customer. 
-- Include Customer Name, Customer ID and the total order count. Group the results by Customer_id.

SELECT Customer_id, COUNT(Order_id) AS Total_Orders
FROM Orders 
GROUP BY Customer_id;

-- 7 Write a query to display customers who have placed more than 2 orders. 
-- Include Customer name, Customer_id and the total number of orders. Use GROUP BY and a HAVING clause.

SELECT Customer_id, COUNT(Order_id) AS Total_Orders
FROM Orders 
GROUP BY Customer_id
HAVING Total_Orders >= 2;

-- 8 Write a query to fetch the total order amount for each customer. 
-- Include Customer Name and the total amount spent (SUM(Amount)). 
-- Ensure customers who haven’t placed orders are also included.

SELECT Customers.Customer_id,Customers.Name, SUM(Amount) AS Total_Cost
FROM Orders
JOIN Customers ON (Customers.Customer_id = Orders.Customer_id)
GROUP BY Customers.Customer_id;

--- 9 Write a query to fetch all products whose Product_name contains the word 'Shoes'. 
---   Sort the results in descending order of price.

SELECT *
FROM Products 
ORDER BY Product_Price DESC;

--- 10 Write a query to display the total amount spent on each product category. 
--- Include the Category Name and total order amount (SUM(Amount)). 
--- Ensure categories without orders are also included.

SELECT Categories.Name, SUM(Amount) AS Total_Amount
FROM Orders  
JOIN Products ON (Orders.Product_id = Products.Product_id)
JOIN Categories ON (Categories.Category_id = Products.Category_id)
GROUP BY Categories.Name;


SELECT *
FROM OrderDetails ;

SELECT *
FROM Orders ;

 --- Q2 Start


SELECT Customers.Name, COUNT(OrderDetails.Product_id) AS ProductCount
FROM OrderDetails 
JOIN Orders ON (Orders.Order_id = OrderDetails.Order_id)
JOIN Customers ON (Customers.Customer_id = Orders.Customer_id)
GROUP BY Customers.Name
ORDER BY ProductCount DESC ;

SELECT Products.Product_name , COUNT(OrderDetails.Product_id) AS MostlyOrdered
FROM OrderDetails 
JOIN Products ON (Products.Product_id = OrderDetails.Product_id)
GROUP BY Product_Name
ORDER BY MostlyOrdered DESC;

SELECT *
FROM OrderDetails ;

SELECT *
FROM Products;

SELECT *
FROM Orders;

ALTER TABLE Orders 
ADD COLUMN Total_Amount VARCHAR(255);

SELECT Order_date, COUNT(Order_id) AS Total_Orders
FROM Orders
GROUP BY Order_date ;


SELECT OrderDetail_id Product_id, Products.Product_name, SUM(OrderDetails.Amount) AS SalesOfProducts
FROM OrderDetails 
JOIN Products ON (Products.Product_id = OrderDetails.Product_id)
GROUP BY Product_name
ORDER BY Product_id;

--- Q2 Ends

INSERT INTO Orders (Customer_id, Order_date, Delivery_address, Delivery_date, Order_status, Total_Amount) 
VALUES 
(5, '2024-06-01', '202 North Street, Chennai', '2024-06-04', 'Placed', '2297'), -- 41-2,45-1
(6, '2024-06-02', '12 Sector-5, Pune', '2024-06-05', 'Placed', '2997'), -- 42-3
(7, '2024-06-01', '76 Mall Road, Jaipur', '2024-06-04', 'Placed', '4998'); -- 47-1,50-1

SELECT *
FROM Orders;

SELECT *
FROM Products;

SELECT *
FROM OrderDetails;





