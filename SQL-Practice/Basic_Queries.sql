-- View all Orders
SELECT * FROM orders;

-- View all Pizzas
SELECT * FROM pizzas;

-- View all Pizza Types
SELECT * FROM pizza_types;

-- View Order Details
SELECT * FROM order_details;

-- Total Orders
SELECT COUNT(*) AS TotalOrders
FROM orders;

-- Total Pizza Types
SELECT COUNT(*) AS PizzaTypes
FROM pizza_types;
