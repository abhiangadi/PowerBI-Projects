-- Quantity Sold by Category

SELECT
category,
SUM(quantity) QuantitySold
FROM pizzas p
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id
JOIN order_details od
ON p.pizza_id=od.pizza_id
GROUP BY category;

-------------------------------------------------

-- Categories selling more than 1000 pizzas

SELECT
category,
SUM(quantity) QuantitySold
FROM pizzas p
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id
JOIN order_details od
ON p.pizza_id=od.pizza_id
GROUP BY category
HAVING SUM(quantity)>1000;
