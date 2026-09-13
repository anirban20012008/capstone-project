import sqlite3
import csv

conn = sqlite3.connect('bigbasket_capstone.db')
cursor = conn.cursor()

query = """
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
"""

cursor.execute(query)
rows = cursor.fetchall()
headers = [description[0] for description in cursor.description]

with open('monthly_category_revenue.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerow(headers)
    writer.writerows(rows)

print(f"CSV created with {len(rows)} rows")
print(f"Total revenue sum: {sum(row[3] for row in rows)}")

conn.close()