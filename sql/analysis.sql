-- ==================================================
-- End-to-End Sales Analytics Project
-- SQL analysis of Superstore retail sales data
-- Author: Zaur Israfilov
-- ==================================================



-- 1. Total Revenue
-- Purpose: Calculate overall sales performance of the business

SELECT SUM(sales) AS total_revenue
FROM sales;


-- 2. Revenue by Category
-- Purpose: Identify which product categories generate the most revenue

SELECT category, SUM(sales) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;


-- 3. Profit by Category
-- Purpose: Analyze profitability across categories (not just revenue)

SELECT category, SUM(profit) AS profit
FROM sales
GROUP BY category
ORDER BY profit DESC;


-- 4. Top 10 Products
-- Purpose: Find top-performing products by revenue (for inventory & marketing decisions)

SELECT product_name, SUM(sales) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;


-- 5. Monthly Sales Trend
-- Purpose: Understand sales trend over time (seasonality, growth)

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS revenue
FROM sales
GROUP BY month
ORDER BY month;


-- 6. Top Customers
-- Purpose: Identify high-value customers for retention strategies

SELECT customer_name, SUM(sales) AS revenue
FROM sales
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;


-- 7. State Performance
-- Purpose: Compare performance across states

SELECT state, SUM(sales) AS revenue
FROM sales
GROUP BY state
ORDER BY revenue DESC;


-- 8. Ranking
-- Purpose: Rank products based on revenue contribution

SELECT 
    product_name,
    SUM(sales) AS revenue,
    ROW_NUMBER() OVER (ORDER BY SUM(sales) DESC) AS rank
FROM sales
GROUP BY product_name;
