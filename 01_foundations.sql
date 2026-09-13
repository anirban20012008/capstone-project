-- 01_foundations.sql
-- Foundational Queries

-- 1. SELECT / WHERE (orders in a specific city)
SELECT * FROM orders WHERE city = 'Bangalore';

-- 2. DISTINCT (list every distinct category)
SELECT DISTINCT category FROM products;

-- 3. ORDER BY + LIMIT (the 5 highest-value orders by amount_inr)
SELECT order_id, amount_inr FROM orders ORDER BY amount_inr DESC LIMIT 5;

-- 4. Alias (AS) (rename an aggregate column, e.g. COUNT(*) AS total_orders)
SELECT COUNT(*) AS total_orders FROM orders;

-- 5. IN (orders whose payment_mode is in a 2-mode list)
SELECT * FROM orders WHERE payment_mode IN ('COD', 'UPI');

-- 6a. BETWEEN (orders with amount_inr in a stated range)
SELECT * FROM orders WHERE amount_inr BETWEEN 500 AND 1000;

-- 6b. NOT BETWEEN (orders with amount_inr outside it)
SELECT * FROM orders WHERE amount_inr NOT BETWEEN 500 AND 1000;

-- 7. IS NULL (orders with no rating recorded - Cancelled / Pending orders)
SELECT * FROM orders WHERE rating IS NULL;