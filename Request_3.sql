-- REQUEST 3

-- Provide a report with all the unique product counts for each segment and sort them in descending order of product counts. 
-- The final output contains 2 fields, segment product_count

SELECT segment, COUNT(distinct product_code) as unique_products
FROM dim_product p
GROUP BY segment
ORDER BY unique_products desc;