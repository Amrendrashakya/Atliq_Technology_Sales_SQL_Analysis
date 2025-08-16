-- REQUEST 6

-- Generate a report which contains the top 5 customers who received an average high pre_invoice_discount_pct for the 
-- fiscal year 2021 and in the Indian market. 
-- The final output contains these fields, customer_code customer average_discount_percentage

SELECT c.customer_code, round(avg(pre_invoice_discount_pct),4) as average_discount_pct
FROM fact_pre_invoice_deductions pre
JOIN dim_customer c
ON c.customer_code = pre.customer_code
WHERE pre.fiscal_year = 2021 AND c.market = "India"
GROUP BY customer_code
ORDER BY average_discount_pct DESC
LIMIT 5;