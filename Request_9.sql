-- REQUEST 9

-- Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution? 
-- The final output contains these fields, channel gross_sales_mln percentage 10.

WITH cte1 AS (
		SELECT c.channel, s.fiscal_year, round(SUM(s.sold_quantity*gross_price)/1000000,2) as gross_sales_mln
		FROM fact_sales_monthly s
		JOIN dim_customer c
		ON c.customer_code = s.customer_code
		JOIN fact_gross_price g
		ON g.product_code = s.product_code
		WHERE  s.fiscal_year = 2021
		GROUP BY c.channel
		ORDER BY gross_sales_mln desc)
SELECT *, gross_sales_mln/sum(gross_sales_mln) over() as pct
FROM cte1

