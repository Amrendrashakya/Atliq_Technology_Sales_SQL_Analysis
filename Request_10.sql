-- Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021?
--  The final output contains these fields, division product_code 
-- product total_sold_quantity rank_order 

WITH cte1 as (
		SELECT division, p.product_code, p.product, sum(sold_quantity) as total_sold_quantity
		FROM fact_sales_monthly s
		JOIN dim_product p
		ON p.product_code = s.product_code
		WHERE fiscal_year = 2021
		GROUP BY p.product_code
		ORDER BY total_sold_quantity desc, product desc),
	cte2 as (SELECT 
				*, dense_rank() over(partition by division order by total_sold_quantity desc) as rnk
			FROM cte1 
			)
SELECT *
FROM  cte2
WHERE rnk <=3;
				
