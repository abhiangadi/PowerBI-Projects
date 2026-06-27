-- Pizza above Average Price

SELECT *
FROM pizzas
WHERE price >
(
SELECT AVG(price)
FROM pizzas
);
