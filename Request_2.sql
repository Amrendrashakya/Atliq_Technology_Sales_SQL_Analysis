-- REQUEST 2

-- What is the percentage of unique product increase in 2021 vs. 2020? 
-- The final output contains these fields, unique_products_2020 unique_products_2021 percentage_chg


WITH cte1 as (SELECT fiscal_year, count(distinct product_code) as unique_product_code_2021
		FROM fact_sales_monthly s1
		WHERE fiscal_year = 2021
        GROUP BY fiscal_year),
	cte2 as (SELECT fiscal_year, count(distinct product_code) as unique_product_code_2020
		FROM fact_sales_monthly s2
		WHERE fiscal_year = 2020
        GROUP BY fiscal_year)
SELECT unique_product_code_2021, unique_product_code_2020, 
		round((unique_product_code_2021-unique_product_code_2020)*100/unique_product_code_2020,2) as pct_chng
FROM cte1
CROSS JOIN cte2;