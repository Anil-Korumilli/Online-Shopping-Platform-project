-- QUERY SOLUTIONS 2
-- Advanced Queries

-- 1. Find top 5 best-selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

-- 2. Average order value per customer
SELECT c.name, AVG(o.total_amount) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name;

-- 3. Customers who have not placed any orders
SELECT c.name, c.email
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 4. Revenue by month
SELECT DATE_TRUNC('month', order_date) AS month, SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 5. Top 3 employees who managed the most orders (dummy, assume assignment)
-- (For simplicity: count orders vs employees as random assumption)
SELECT e.name, COUNT(o.order_id) AS handled_orders
FROM employees e
JOIN orders o ON o.customer_id % 50 = e.employee_id % 50
GROUP BY e.name
ORDER BY handled_orders DESC
LIMIT 3;
