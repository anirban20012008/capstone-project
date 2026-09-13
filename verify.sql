-- VERIFICATION RESULTS 
-- products : 31
-- customers : 50
-- orders : 500
-- category_targets : 6
-- orders status : Delivered = 434 ,Cancelled = 42 , Pending = 24

SELECT COUNT(*) FROM products ;
SELECT COUNT(*) FROM customers ;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM category_targets ;
SELECT status , COUNT(*) FROM orders GROUP BY status  ;