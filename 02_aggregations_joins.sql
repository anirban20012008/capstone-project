-- 02_aggregation_joins.sql

-- (a) INNER JOIN of orders to products, GROUP BY category
-- For Delivered orders only, with HAVING total_revenue > 10000
SELECT 
    p.category,
    COUNT(*) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_amount
FROM orders o
INNER JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category
HAVING total_revenue > 10000;

-- (b) LEFT JOIN of products to orders, counting total orders per product
-- MUST use COUNT(o.order_id) not COUNT(*) to get 0 for Premium Face Cream 50g
-- Ordered ascending to surface least-ordered products
SELECT 
    p.product_id,
    p.product_name,
    COUNT(o.order_id) AS total_orders
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_orders ASC;