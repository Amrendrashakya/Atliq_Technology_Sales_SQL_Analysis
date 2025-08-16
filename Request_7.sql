-- Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month . 
-- This analysis helps to get an idea of low and high-performing months and take strategic decisions. 
-- The final report contains these columns: Month Year Gross sales Amount 8.

-- Mothnly Report

SELECT CONCAT(MONTHNAME(date)," ", YEAR(date)) as months, s.fiscal_year, round(SUM(s.sold_quantity*gross_price),2) as gross_sales_amt
FROM fact_sales_monthly s
JOIN dim_customer c
ON c.customer_code = s.customer_code
JOIN fact_gross_price g
ON g.product_code = s.product_code
WHERE  c.customer = "Atliq Exclusive"
GROUP BY months, s.fiscal_year
ORDER BY s.fiscal_year asc;