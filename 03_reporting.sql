-- 03_reporting.sql

-- (a) tier every product by its total Delivered revenue
SELECT 
    p.product_name,
    SUM(o.amount_inr) AS total_revenue,
    CASE 
        WHEN SUM(o.amount_inr) >= 3000 THEN 'High'
        WHEN SUM(o.amount_inr) >= 1000 THEN 'Medium'
        ELSE 'Low'
    END AS revenue_tier
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id AND o.status = 'Delivered'
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;

-- (b) monthly-by-category business report - Delivered only
SELECT 
    p.category,
    strftime('%Y-%m', o.order_date) AS month,
    COUNT(*) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category, month
ORDER BY p.category, month;

-- (c) derived-fields query joining to category_targets with variance calculation
-- IMPORTANT: Use * 100.0 first to avoid SQLite integer division bug
WITH category_revenue AS (
    SELECT 
        p.category,
        SUM(o.amount_inr) AS total_revenue
    FROM orders o
    JOIN products p ON o.product_id = p.product_id
    WHERE o.status = 'Delivered'
    GROUP BY p.category
)
SELECT 
    cr.category,
    cr.total_revenue,
    ct.target_revenue_inr,
    (ct.target_revenue_inr - cr.total_revenue) AS variance,
    ((cr.total_revenue - ct.target_revenue_inr) * 100.0) / ct.target_revenue_inr AS percentage_variance,
    CASE 
        WHEN cr.total_revenue >= ct.target_revenue_inr THEN 'Above Target'
        WHEN ((cr.total_revenue - ct.target_revenue_inr) * 100.0) / ct.target_revenue_inr >= -15 THEN 'Below Target - Watch'
        ELSE 'Below Target - Critical'
    END AS status_tag
FROM category_revenue cr
JOIN category_targets ct ON cr.category = ct.category
ORDER BY cr.category;