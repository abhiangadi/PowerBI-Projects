-- Find the second highest pizza price

SELECT DISTINCT price
FROM pizzas
ORDER BY price DESC
LIMIT 1 OFFSET 1;

-------------------------------------------------

-- Top 3 Revenue Pizzas

SELECT
pt.name,
SUM(quantity*price) Revenue
FROM pizzas p
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id
JOIN order_details od
ON p.pizza_id=od.pizza_id
GROUP BY pt.name
ORDER BY Revenue DESC
LIMIT 3;
