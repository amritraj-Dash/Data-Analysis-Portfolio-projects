-- ==========================================================
-- Pizza Sales Data Analysis
-- Author: Amrit Raj
-- Database: MySQL
-- ==========================================================

SELECT * FROM pizza_sales;

-- total price of pizzas sold

SELECT SUM(total_price) AS total_revenue FROM pizza_sales;

-- Average order value

SELECT (SUM(total_price)/COUNT(DISTINCT order_id)) AS AVG_ODR_VALUE
FROM pizza_sales;

-- TOTAL PIZZAS SOLD

SELECT SUM(quantity) AS total_pizzas_sold 
FROM pizza_sales;

-- Total Orders

SELECT COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales;

-- Average pizzas sold per order

SELECT CAST(SUM(quantity) /COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS AVG_PIZZAS_SOLD
FROM pizza_sales;

-- Daily trends

SELECT DAYNAME(STR_TO_DATE(order_date,'%d-%m-%y')) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DAYNAME(STR_TO_DATE(order_date,'%d-%m-%y'));

-- Hourly trends

SELECT HOUR(STR_TO_DATE(order_time, '%H:%i:%s')) as order_hours, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by HOUR(STR_TO_DATE(order_time, '%H:%i:%s'))
order by order_hours;

-- percentage of sales pizza category

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category;

-- total pizzzas sold by pizza category

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(STR_TO_DATE(order_date,'%d-%m-%y')) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;

-- percentage of pizza sales by size of pizza_category

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;

-- Top 5 sellers by pizza sold

SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
LIMIT 5;

-- Bottom 5 low performing sellers

SELECT  pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC
LIMIT 5;

-- ====================================================================