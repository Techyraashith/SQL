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
FROM Customers ;











