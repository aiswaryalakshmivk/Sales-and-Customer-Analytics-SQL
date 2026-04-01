-- Monthly revenue analysis
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
       SUM(price * quantity) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;
