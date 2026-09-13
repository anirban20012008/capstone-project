
# AI Tool Usage Log - Part 4

## Prompt 1 - Task 2 & 4 - Dedup and Missing Logic
**Role:** You are a Pandas expert data analyst.
**Context:** I have orders_raw.csv with 500+ rows, duplicate order_ids, missing amount_inr and missing ratings for Cancelled/Pending orders. Acceptance criteria says must end at exactly 500 rows.
**Task:** Give code to identify duplicate order_ids, remove keeping first occurrence, count missing amount_inr and explain business logic for rating nulls.
**Format:** Provide python code using duplicated(), drop_duplicates(subset=['order_id']), isnull().sum(), and explanation.

**Verification:** I verified rows went from 515 to 500 after drop_duplicates, confirmed missing amount_inr count was 8 via isnull().sum(), and checked rating nulls only for Cancelled/Pending via value_counts() - matched expected business logic.

## Prompt 2 - Task 5 & 7b - IQR Outlier & Merge Logic
**Role:** You are a senior data analyst expert in Pandas with matplotlib.
**Context:** I have cleaned orders data with 500 rows, missing amount_inr excluded, rating nulls legitimate for Cancelled/Pending. Need to detect outliers on Delivered + non-null amount_inr only as per Task 5. Lower fence negative, so only upper outliers. Also need to merge with products.csv.
**Task:** Write code to compute Q1/Q3 via .quantile(0.25) and .quantile(0.75), IQR, upper fence Q3+1.5*IQR, cap using .clip(upper=...), state rows capped (~16). Then merge cleaned orders with products.csv on product_id using pd.merge() and groupby supplier for top revenue. Cross-validate top category Household Essentials and top supplier HomeEssentials Traders vs Part 1.
**Format:** Provide Python code with print statements for Q1, Q3, upper fence, rows capped, top category and top supplier.

**Verification:** I re-ran the AI-suggested .clip() line and manually checked 3 previously-outlier rows (order_id OR-234, OR-189, OR-402) were capped at exactly the upper fence value INR 12850. Verified pd.merge() brought supplier column correctly - 500 rows merged without loss. groupby matched Household Essentials and HomeEssentials Traders as top, consistent with Part 1 SQL diagnostic. Totals differed slightly as expected due to capping and dedup.

## Prompt 3 - Task 8 & 9 - Visualization and Insights
**Role:** You are a business intelligence analyst.
**Context:** I have final cleaned data - Delivered only, capped, 500 rows base, 4 cities, 6 categories, Household Essentials top, HomeEssentials Traders top, March peak.
**Task:** Give matplotlib code for bar chart of category revenue post-cleaning with title showing top category INR, and line chart of monthly revenue trend showing March peak. Also suggest 3 observations in What / Why it matters / Next step format grounded in numbers.
**Format:** Provide matplotlib code with kind='bar' and plot(marker='o'), plus markdown insights.

**Verification:** I checked bar chart title shows actual INR value from category_rev.max(), not placeholder. Line chart x-axis sorted 1-6 months. Insights use my actual INR values from notebook, not generic statements, and mention 16 rows capped and 500 rows final.

