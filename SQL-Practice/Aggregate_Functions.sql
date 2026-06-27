-- Total Revenue

SELECT
ROUND(SUM(quantity*price),2) AS Revenue
FROM order_details od
JOIN pizzas p
ON od.pizza_id=p.pizza_id;

-------------------------------------------------

-- Average Pizza Price

SELECT
ROUND(AVG(price),2)
FROM pizzas;

-------------------------------------------------

-- Highest Pizza Price

SELECT
MAX(price)
FROM pizzas;

-------------------------------------------------

-- Lowest Pizza Price

SELECT
MIN(price)
FROM pizzas;
