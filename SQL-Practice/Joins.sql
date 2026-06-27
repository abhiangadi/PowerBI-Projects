-- Orders with Pizza Details

SELECT
o.order_id,
pt.name,
p.size,
od.quantity
FROM orders o
JOIN order_details od
ON o.order_id=od.order_id
JOIN pizzas p
ON od.pizza_id=p.pizza_id
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id;

-------------------------------------------------

-- Revenue by Pizza

SELECT
pt.name,
SUM(quantity*price) Revenue
FROM pizzas p
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id
JOIN order_details od
ON p.pizza_id=od.pizza_id
GROUP BY pt.name;
