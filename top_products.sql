-- Top-selling products by quantity
SELECT p.product_name, SUM(s.quantity) AS total_sold
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Revenue by product
SELECT p.product_name, SUM(s.price * s.quantity) AS revenue
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;
