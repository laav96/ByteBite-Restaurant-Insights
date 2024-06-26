-- OBJECTIVE 1
-- Explore the items table
-- Your first objective is to better understand the items table by finding the number of rows in the table, the least and most expensive items, and the item prices within each category.

-- 1. View the menu_items table
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu
SELECT COUNT(*) FROM menu_items;

-- # RESULT: 32 items

-- 3.What are the least and most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price;

-- # RESULT: Edamame - Asian

SELECT * FROM menu_items
ORDER BY price DESC;

-- # RESULT: Shrimp Scampi - Italian

-- 4. How many Italian dishes are on the menu?
SELECT count(*) FROM menu_items
WHERE category = 'Italian';

-- # RESULT: 9 Italian Dishes

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

-- # RESULT: Least Expensive: Spaghetti $14.50

SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- # RESULT: Most Expensive: Shrimp Scampi $19.95

-- 6. How many dishes are in each category?
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- # RESULT: American (6), Asian (8), Mexican (9), Italian (9)

-- 7. What is the average dish price within each category?
SELECT category, ROUND(AVG(price),2) AS avg_price
FROM menu_items
GROUP BY category;

-- # RESULT: American ($10.07), Asian ($13.48), Mexican ($11.80), Italian ($16.75)
