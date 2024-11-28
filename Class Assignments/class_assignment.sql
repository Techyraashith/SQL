USE farmers_market;
SHOW TABLES;
USE farmers_market;
SELECT *
FROM customer_purchases;

SELECT product_id, SUM(quantity) AS Total_quantuty
FROM customer_purchases
GROUP BY product_id ;

SELECT market_date, SUM(quantity) AS Total_quantity
FROM customer_purchases
GROUP BY market_date;

SELECT market_date, product_id, SUM(quantity) AS Total_quantity
FROM customer_purchases
GROUP BY product_id, market_date
ORDER BY market_date;