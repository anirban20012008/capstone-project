# Task 7 - AI-Assisted Log - RCTCF Prompt #1

## Prompt used for Task 5(c)

**R - Role:**
You are a SQLite expert and senior data analyst who writes production-ready SQL for BigBasket.

**C - Context:**
I have SQLite database `bigbasket_capstone.db` with tables:
- orders(order_id, product_id, amount_inr INTEGER, status, order_date)
- products(product_id, product_name, category)
- category_targets(category, target_revenue_inr INTEGER)
I have to calculate only Delivered orders. I already have the monthly report query that gives 36 rows and total 88282.

**T - Task:**
Write a derived-fields query that first calculates total_revenue per category from Delivered orders, joins it to category_targets, and calculates:
variance = target_revenue_inr - total_revenue
percentage_variance = ((total_revenue - target_revenue_inr) * 100.0) / target_revenue_inr
status_tag = 'Above Target' when total >= target, 'Below Target - Watch' when shortfall is within 15%, else 'Below Target - Critical'

**C - Constraints:**
- MUST use * 100.0 first in percentage formula to avoid SQLite integer-division (do not use (a-b)/b alone)
- MUST filter o.status = 'Delivered'
- MUST use WITH clause for category_revenue CTE
- MUST use exact column names given

**F - Format:**
Return only final runnable SQLite query with comments, no extra explanation.

## AI Response
AI gave me CTE + JOIN + CASE WHEN with percentage check >= -15 for Watch tag.

## Concrete Verification Step Actually Performed
I ran the AI-suggested query in VS Code using `python -c` to execute against `bigbasket_capstone.db` and:
1. Checked that percentage_variance returned decimal values like -8.45 not 0, proving 100.0 fix worked.
2. Manually verified 3 categories by running `SELECT SUM(amount_inr) FROM orders JOIN products WHERE category='Beverages' AND status='Delivered'` and matched it with CTE output.
3. Checked status_tag for one Below Target category to ensure -12% was tagged as 'Below Target - Watch' correctly.

I performed this check before saving to 03_reporting.sql.