-- In which quarter of 2020, got the maximum total_sold_quantity?
--  The final output contains these fields sorted by the total_sold_quantity, Quarter total_sold_quantity 9.

WITH cte1 as (SELECT 
				CASE
					WHEN month(date) IN (9,10,11) THEN "Q1"
					WHEN month(date) IN (12,1,2) THEN "Q2"
					WHEN month(date) IN (3,4,5) THEN "Q3"
					ELSE "Q4"
				END AS Quarters,fiscal_year,
				sum(sold_quantity) as total_sold_quantity
			FROM fact_sales_monthly
            GROUP BY quarters) 
SELECT *
FROM cte1
WHERE fiscal_year = 2020
ORDER BY total_sold_quantity DESC
		

