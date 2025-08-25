-- QUERY SOLUTIONS 1
-- Basic Queries

-- 1. List all customers
SELECT * FROM customers;

-- 2. Find products with stock less than 10
SELECT product_name, stock FROM products WHERE stock < 10;

-- 3. Get all orders placed in the last 30 days
SELECT * FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';

-- 4. Count total customers
SELECT COUNT(*) FROM customers;

-- 5. Show total sales amount per category
SELECT c.category_name, SUM(oi.subtotal) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name;
