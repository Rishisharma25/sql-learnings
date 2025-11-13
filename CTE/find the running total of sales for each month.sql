-- find the running total of sales for each month 
use salesdb;
WITH cte_monthly_summary AS (
    SELECT
        DATE_FORMAT(orderdate, '%Y-%m-01') AS order_month,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY DATE_FORMAT(orderdate, '%Y-%m-01')
)
SELECT 
	order_month,
    total_sales,
    sum(total_sales) over(order by order_month) as runningtotal
from cte_monthly_summary;
