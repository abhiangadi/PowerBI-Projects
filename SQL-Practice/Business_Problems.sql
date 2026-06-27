-- 1 Total Revenue

SELECT
ROUND(SUM(quantity*price),2)
FROM order_details od
JOIN pizzas p
ON od.pizza_id=p.pizza_id;

-------------------------------------------------

-- 2 Top 10 Selling Pizzas

SELECT
pt.name,
SUM(quantity) TotalSold
FROM pizzas p
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id
JOIN order_details od
ON p.pizza_id=od.pizza_id
GROUP BY pt.name
ORDER BY TotalSold DESC
LIMIT 10;

-------------------------------------------------

-- 3 Monthly Revenue

SELECT
MONTHNAME(date) Month,
ROUND(SUM(quantity*price),2) Revenue
FROM orders o
JOIN order_details od
ON o.order_id=od.order_id
JOIN pizzas p
ON od.pizza_id=p.pizza_id
GROUP BY MONTHNAME(date);

-------------------------------------------------

-- 4 Peak Ordering Hour

SELECT
HOUR(time) Hour,
COUNT(order_id) Orders
FROM orders
GROUP BY Hour
ORDER BY Orders DESC;

-------------------------------------------------

-- 5 Revenue by Category

SELECT
category,
ROUND(SUM(quantity*price),2) Revenue
FROM pizzas p
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id
JOIN order_details od
ON p.pizza_id=od.pizza_id
GROUP BY category;
