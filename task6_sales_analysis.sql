-- Create Database
CREATE DATABASE sales_analysis;
USE sales_analysis;

-- Create Table
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- Insert Data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-10', 500.00, 101),
(2, '2023-01-15', 700.00, 102),
(3, '2023-02-05', 300.00, 103),
(4, '2023-02-20', 900.00, 101),
(5, '2023-03-12', 1200.00, 104),
(6, '2023-03-18', 400.00, 102),
(7, '2023-04-02', 1500.00, 105),
(8, '2023-04-18', 800.00, 103);

-- Monthly Revenue & Order Volume
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Top 3 Months by Sales
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 3;
