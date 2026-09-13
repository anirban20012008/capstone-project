# BigBasket Executive Dashboard - Capstone Project
### Anirban Kar - Data Analyst Capstone Project 2026

## 🔗 Live Tableau Dashboard
**[Click Here to View Dashboard](https://public.tableau.com/app/profile/anirban.kar5717/viz/BigBasketExecutiveDashboard/BigBasketExecutiveDashboard2?publish=yes)**
## 🔴 Live Links
- **GitHub Repo:** https://github.com/anirban20012008/capstone-project

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





## 📊 Executive Summary (Task 7)
- **Period:** Jan - Jun 2026
- **Total Revenue:** INR 88,282 | **Orders:** 434 | **AOV:** INR 203.4
- **Target Achievement:** 3 out of 6 categories meeting revenue target.

**Key Insights:**
1.  **Top Revenue:** Household Essentials (INR 21,715) and Beverages are driving growth - Above Target.
2.  **Risk Area:** Fruits & Vegetables has high revenue but is Critical vs target - needs margin/promotion check.
3.  **Trend:** March peak indicates seasonal uplift. May dip needs investigation.
4.  **Action:** Apply Household strategy to Bakery & Dairy (Watch/Critical).

## 📁 Repository Structure (Task 8 Requirement)
- `01_foundations.sql` - Cleaned orders table, delivered filter
- `02_aggregations_joins.sql` - monthly_category_revenue logic
- `03_reporting.sql` - All 4 KPIs for Tableau
- `monthly_category_revenue (1).xlsx` - Final dataset for Tableau
- `export_csv.py` - Python export script
- `ai_log.md` - AI assistance log
- `README.md` - This file

## 🛠️ Dashboard Features (Tasks 3-6)
- 4 KPI Cards (Revenue, Orders, AOV, Meeting Target)
- All Categories Combined - Monthly Trend Line
- Category Performance Bar Chart (Red/Orange/Green by Tag)
- Interactive Filters: Category & Month - Applied to ALL sheets using `Apply to Worksheets > All Using This Data Source`
- Dashboard Action: Click on bar filters entire dashboard
- Size: Automatic, Floating Layout

## 🤖 AI Tools Used
- Meta AI for DAX/SQL logic and Tableau troubleshooting

## ▶️ How to Replicate
1. Run SQL files in order 01>02>03
2. Export as monthly_category_revenue.xlsx
3. Open Tableau > Connect to Excel > Build sheets > Create Dashboard with filters

---
Submitted: 13 Sept 2026