SELECT
pt.name,
SUM(quantity*price) Revenue,

RANK() OVER(
ORDER BY SUM(quantity*price) DESC
) RevenueRank

FROM pizzas p
JOIN pizza_types pt
ON p.pizza_type_id=pt.pizza_type_id
JOIN order_details od
ON p.pizza_id=od.pizza_id

GROUP BY pt.name;
