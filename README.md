# 📊 Task 6 – Sales Trend Analysis Using MySQL

## 🎯 Objective
Analyze monthly revenue and order volume using SQL aggregate functions.


## 🛠 Tools Used
- MySQL
- GitHub


## 📂 Dataset
Table Name: `online_sales`

Columns:
- order_id
- order_date
- amount
- product_id

## 📈 Analysis Performed

### 1️⃣ Monthly Revenue & Order Volume
- Used `YEAR()` and `MONTH()` for time grouping
- Used `SUM()` to calculate total revenue
- Used `COUNT(DISTINCT order_id)` to calculate order volume
- Used `GROUP BY` for monthly aggregation
- Used `ORDER BY` for sorting results

### 2️⃣ Top 3 Months by Sales
- Sorted revenue in descending order
- Used `LIMIT 3` to fetch top 3 months


## 🧠 Key Concepts Learned
- Aggregate Functions (SUM, COUNT)
- GROUP BY vs ORDER BY
- Time-based data analysis
- Handling DISTINCT values
- SQL data grouping techniques

## 📸 Output Screenshots
Screenshots are available in the `screenshots` folder.


## ✅ Outcome
Successfully analyzed sales trends using MySQL and implemented monthly revenue and order volume aggregation.
