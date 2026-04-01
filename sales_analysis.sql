-- View all sales
SELECT * FROM sales;

-- Total sales revenue
SELECT SUM(price * quantity) AS total_revenue
FROM sales;

-- Total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

-- Sales by customer
SELECT customer_id, SUM(price * quantity) AS customer_total
FROM sales
GROUP BY customer_id
ORDER BY customer_total DESC;
