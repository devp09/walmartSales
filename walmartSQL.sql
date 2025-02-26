USE walmart;
SELECT * FROM walmart;
-- select	payment_method, count(*) from walmart group by payment_method

-- SELECT COUNT(DISTINCT Branch) FROM walmart;

-- select max(quantity) From walmart;

-- Customer & Sales Insights(Customer Buying Behavior:) --
WITH CityAvgTransaction AS (
    SELECT 
        city, 
        AVG(total) AS avg_transaction_value
    FROM sales_data
    GROUP BY city
)
SELECT 
    city, 
    avg_transaction_value
FROM CityAvgTransaction
ORDER BY avg_transaction_value DESC
LIMIT 1;
-- -------------------------------------------------- --
-- Operational & Performance Metrics(Peak Sales Time Analysis:) --

select store_id,
		hour(transaction_time) as hour,
        count(*) as transaction_count
from sales_data
group by store_id, hour
order by store_id, transaction_count desc;

-- (Predictive & Strategic Insights) How do sales compare month over month? Are there seasonal spikes? --
WITH MonthlySales AS (
    SELECT 
        MONTH(transaction_date) AS month, 
        YEAR(transaction_date) AS year,
        SUM(total_sales) AS total_revenue
    FROM sales_data
    GROUP BY year, month
)
SELECT a.year, a.month, a.total_revenue,
       (a.total_revenue - b.total_revenue) / b.total_revenue * 100 AS MoM_Change
FROM MonthlySales a
LEFT JOIN MonthlySales b 
ON a.year = b.year AND a.month = b.month + 1
ORDER BY a.year, a.month;

-- ---------------------

SELECT MONTH(transaction_date) AS month, 
       SUM(total_sales) AS total_revenue
FROM sales_data
GROUP BY month
ORDER BY total_revenue DESC;
 


