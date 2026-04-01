-- View all customers
SELECT * FROM customers;

-- Count total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Show customers by city
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

-- Show customer purchase details
SELECT c.customer_name, s.sale_id, s.price, s.sale_date
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id;
