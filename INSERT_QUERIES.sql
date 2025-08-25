-- Load data from CSV into PostgreSQL tables
-- Adjust file paths as needed for your environment

\copy categories(category_id, category_name) FROM 'categories.csv' DELIMITER ',' CSV HEADER;
\copy customers(customer_id, name, email, phone, signup_date) FROM 'customers.csv' DELIMITER ',' CSV HEADER;
\copy employees(employee_id, name, role, email, phone, hire_date) FROM 'employees.csv' DELIMITER ',' CSV HEADER;
\copy products(product_id, product_name, category_id, price, stock) FROM 'products.csv' DELIMITER ',' CSV HEADER;
\copy addresses(address_id, customer_id, street, city, state, zipcode, country) FROM 'addresses.csv' DELIMITER ',' CSV HEADER;
\copy orders(order_id, customer_id, order_date, status, total_amount) FROM 'orders.csv' DELIMITER ',' CSV HEADER;
\copy order_items(order_item_id, order_id, product_id, quantity, subtotal) FROM 'order_items.csv' DELIMITER ',' CSV HEADER;
\copy payments(payment_id, order_id, method, amount, status, payment_date) FROM 'payments.csv' DELIMITER ',' CSV HEADER;
\copy carts(cart_id, customer_id, created_at) FROM 'carts.csv' DELIMITER ',' CSV HEADER;
\copy cart_items(cart_item_id, cart_id, product_id, quantity, subtotal) FROM 'cart_items.csv' DELIMITER ',' CSV HEADER;
