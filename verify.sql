SELECT COUNT(*) FROM products ;
SELECT COUNT(*) FROM customers ;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM category_targets ;
SELECT status , COUNT(*) FROM orders GROUP BY status;