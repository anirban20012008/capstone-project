# BigBasket Executive Dashboard - Capstone Project

## 🔗 Live Tableau Dashboard
**[Click Here to View Dashboard](https://public.tableau.com/app/profile/anirban.kar5717/viz/BigBasketExecutiveDashboard/BigBasketExecutiveDashboard2?publish=yes)**

## Dashboard Includes:
- **KPI 1:** Total Revenue = INR 88,282
- **KPI 2:** Total Delivered Orders = 434
- **KPI 3:** Average Order Value = INR 203.4
- **KPI 4:** Categories Meeting Target = 3 out of 6
- **Time Series:** Jan-Jun 2026 Monthly Revenue Trend
- **Category Performance:** Color-coded (Green=Above Target, Orange=Watch, Red=Critical)
- **Interactive Filters:** Category + Month (Apply to All Sheets)

## Task 7 - Data Story & Insights

**1. Revenue Overview:**
Total revenue of INR 88,282 from 434 delivered orders with AOV of INR 203.4 shows stable performance.

**2. Category Performance:**
Top Performer: Fruits & Vegetables (INR 9,790) - but flagged as Critical due to target gap.
Meeting Target (3/6): Household Essentials, Beverages, Staples are above target.
Needs Attention: Bakery, Fruits & Vegetables, Dairy require intervention.

**3. Seasonality:**
Peak in March 2026 (~INR 17K), dip in May 2026 - indicates promotional dependency.

**4. Recommendation:**
Focus marketing on Critical categories and replicate Household Essentials strategy.

## Tech Stack
- SQL (01_foundations, 02_aggregations, 03_reporting)
- Tableau Public (KPI Cards, Line Chart, Bar Chart, Floating Layout, Actions)
- Excel (monthly_category_revenue)
- Git & GitHub

## Files
- `01_foundations.sql` - Base tables
- `02_aggregations_joins.sql` - Category aggregation
- `03_reporting.sql` - KPIs for dashboard
- `export_csv.py` - Export for Tableau
- `monthly_category_revenue (1).xlsx` - Final dataset