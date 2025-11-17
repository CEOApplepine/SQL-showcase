-- ============================================
-- 1. TOTAL REVENUE
-- ============================================

SELECT 
    SUM(quantity * price) AS total_revenue
FROM sales;


-- ============================================
-- 2. REVENUE BY CUSTOMER SEGMENT
-- ============================================

SELECT 
    segment,
    ROUND(SUM(quantity * price), 2) AS revenue
FROM sales
GROUP BY segment
ORDER BY revenue DESC;


-- ============================================
-- 3. TOP SELLING PRODUCTS
-- ============================================

SELECT 
    product,
    COUNT(*) AS total_orders,
    SUM(quantity) AS total_quantity_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;


-- ============================================
-- 4. MONTHLY REVENUE TREND (CTE)
-- ============================================

WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', order_date) AS month,
        SUM(quantity * price) AS revenue
    FROM sales
    GROUP BY month
)
SELECT * FROM monthly_sales
ORDER BY month;


-- ============================================
-- 5. CUSTOMER LIFETIME VALUE (WINDOW FUNCTION)
-- ============================================

SELECT 
    customer_id,
    customer_name,
    segment,
    SUM(quantity * price) AS total_spent,
    RANK() OVER (ORDER BY SUM(quantity * price) DESC) AS revenue_rank
FROM sales
GROUP BY customer_id, customer_name, segment
ORDER BY total_spent DESC;


-- ============================================
-- 6. CHURN RISK (NO PURCHASE IN LAST 60 DAYS)
-- ============================================

SELECT 
    customer_id,
    customer_name,
    MAX(order_date) AS last_purchase_date,
    CURRENT_DATE - MAX(order_date) AS days_since_last_purchase
FROM sales
GROUP BY customer_id, customer_name
HAVING CURRENT_DATE - MAX(order_date) > 60
ORDER BY days_since_last_purchase DESC;
