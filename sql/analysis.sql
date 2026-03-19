-- ==================================================
-- End-to-End Sales Analytics Project
-- SQL analysis of Superstore retail sales data
-- Author: Zaur Israfilov
-- ==================================================


-- 1. Total Revenue
SELECT SUM(sales) AS total_revenue
FROM sales;


-- 2. Revenue by Category
SELECT category, SUM(sales) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;


-- 3. Profit by Category
SELECT category, SUM(profit) AS profit
FROM sales
GROUP BY category
ORDER BY profit DESC;


-- 4. Top 10 Products
SELECT product_name, SUM(sales) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;


-- 5. Monthly Sales Trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS revenue
FROM sales
GROUP BY month
ORDER BY month;


-- 6. Top Customers
SELECT customer_name, SUM(sales) AS revenue
FROM sales
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;


-- 7. Region Performance
SELECT state, SUM(sales) AS revenue
FROM sales
GROUP BY state
ORDER BY revenue DESC;


-- 8. Ranking
SELECT 
    product_name,
    SUM(sales) AS revenue,
    ROW_NUMBER() OVER (ORDER BY SUM(sales) DESC) AS rank
FROM sales
GROUP BY product_name;
