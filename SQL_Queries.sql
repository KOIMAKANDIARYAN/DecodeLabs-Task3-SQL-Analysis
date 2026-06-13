-- 1. Total Orders
SELECT COUNT(*) AS total_orders
FROM ecommerce_orders;

-- 2. Total Revenue
SELECT SUM(totalprice) AS total_revenue
FROM ecommerce_orders;

-- 3. Average Order Value
SELECT ROUND(AVG(totalprice), 2) AS average_order_value
FROM ecommerce_orders;

-- 4. Top Selling Products
SELECT product, COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY product
ORDER BY total_orders DESC;

-- 5. Highest Revenue Products
SELECT product, ROUND(SUM(totalprice), 2) AS revenue
FROM ecommerce_orders
GROUP BY product
ORDER BY revenue DESC;

-- 6. Most Used Payment Methods
SELECT paymentmethod, COUNT(*) AS usage_count
FROM ecommerce_orders
GROUP BY paymentmethod
ORDER BY usage_count DESC;

-- 7. Order Status Distribution
SELECT orderstatus, COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY orderstatus
ORDER BY total_orders DESC;

-- 8. Referral Source Analysis
SELECT referralsource, COUNT(*) AS total_orders
FROM ecommerce_orders
GROUP BY referralsource
ORDER BY total_orders DESC;

-- 9. Coupon Usage Analysis
SELECT couponcode, COUNT(*) AS usage_count
FROM ecommerce_orders
GROUP BY couponcode
ORDER BY usage_count DESC;

-- 10. Monthly Revenue Trend
SELECT
    EXTRACT(MONTH FROM orderdate) AS month,
    ROUND(SUM(totalprice), 2) AS revenue
FROM ecommerce_orders
GROUP BY month
ORDER BY month;