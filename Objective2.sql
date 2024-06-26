-- OBJECTIVE 2
-- Explore the orders table
-- Your second objective is to better understand the orders table by finding the date range, the number of items within each order, and the orders with the highest number of items.

USE restaurant_db;

-- View the order_details table.
SELECT * FROM order_details;

-- What is the date range of the table?
SELECT MIN(order_date), MAX(order_date) FROM order_details;

-- RESULT: 2023-01-01 ~ 2023-03-31

-- How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id) FROM order_details;

-- RESULT: 5,370 Orders

-- How many items were ordered within this date range?
SELECT COUNT(*) FROM order_details;

-- RESULT: 12,234 items

-- Which orders had the most number of items?
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- RESULT: Order ID: 330, 440, 443, 1957, 2657, 3473, 4305

-- How many orders had more than 12 items?
SELECT COUNT(*) FROM 

(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;

-- RESULT: 20 orders 
