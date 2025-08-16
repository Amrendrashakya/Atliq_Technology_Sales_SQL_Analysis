Atliq Technology Sales - Ad-Hoc Insights

## Project Overview
In this project we're looking at the Atliq Technology Sales Ad-Hoc Insights that are discussed by the stakeholders. There requirements are as follow:-


## Database Schema

The project uses five main tables:

1. **dim_customer**: contains customer-related data
   - `customer_code`: The 'customer_code' column features unique identification codes for every customer in the dataset. These codes can be used to track a customer's sales
                      history, demographic information, and other relevant details. For example, the codes could look like '70002017', '90005160', and '80007195' respectively.
   - `customer`: The 'customer' column lists the names of customers, for example 'Atliq Exclusive', 'Flipkart', and 'Surface Stores' etc.
   - `platform`: The 'platform' column identifies the means by which a company's products or services are sold. "Brick & Mortar" represents the physical store/location, and
                "E-Commerce" represents online platforms.
   - `channel`: The 'channel' column reflects the distribution methods used to sell a product. These methods include "Retailers", "Direct", and "Distributors".
   - `market`: The 'market' column lists the countries in which the customer is located.
   - `region`: The 'region' column categorizes countries according to their geographic location.
   - `sub_zone`: "The 'sub_zone' column further breaks down the regions into sub-regions

2. **dim_product**: contains product-related data
    - product_code: The 'product_code' column features unique identification codes for each product, serving as a means to track and distinguish individual products within a	database or system.    
    - division: The 'division' column categorizes products into groups such as "P & A" (Peripherals and Accessories), "N & S" (Network and Storage) and "PC" (Personal Computer).    
    - segment: The 'segment' column categorizes products further within the division, such as "Peripherals" (keyboard, mouse, monitor, etc.), "Accessories" (cases, cooling solutions, power supplies),
              "Notebook" (laptops), "Desktop" (desktops, all-in-one PCs, etc), "Storage" (hard disks, SSDs, external storage), and "Networking" (routers, switches, modems, etc.).
    - category: The 'category' column classifies products into specific subcategories within the segment.    
    - product: The 'product' column lists the names of individual products, corresponding to the unique identification codes found in the 'product_code' column.    
    - variant: The "variant" column classifies products according to their features, prices, and other characteristics.
      
3. **fact_gross_price**: contains gross price information for each product
  - product_code: The 'product_code' column features unique identification codes for each product.  
  - fiscal_year: The 'fiscal_year' column contains the fiscal period in which the product sale was recorded.
                  Data available in this column covers the fiscal years 2020 and 2021.  
  - gross_price: The 'gross_price' column holds the initial price of a product, prior to any reductions or taxes. It is the original selling price of the product.


4. **fact_manufacturing_cost**: contains the cost incurred in the production of each product
  - product_code: The 'product_code' column features unique identification codes for each product  
  - cost_year: The "cost_year" column contains the fiscal year in which the product was manufactured.  
  - manufacturing_cost: The "manufacturing_cost" column contains the total cost incurred for the production of a product. This cost includes direct costs like
                        raw materials, labor, and overhead expenses that are directly associated with the production process.

5. **fact_pre_invoice_deductions**: contains pre-invoice deductions information for each product
  - customer_code: The 'customer_code' column features unique identification codes for every customer in the dataset.  
  - fiscal_year: The "fiscal_year" column holds the fiscal period when the sale of a product occurred.  
  - pre_invoice_discount_pct: The "pre_invoice_discount_pct" column contains the percentage of pre-invoice deductions for each product. Pre-invoice deductions are 
                              discounts that are applied to the gross price of a product before the invoice is generated, and typically applied to large orders or 	long-term contracts.
  
6. **fact_sales_monthly**: contains monthly sales data for each product.
  - date: The "date" column contains the date when the sale of a product was made, in a monthly format for 2020 and 2021 fiscal years.  
  - product_code: The "product_code" column contains a unique identification code for each product.   
  - customer_code: The 'customer_code' column features unique identification codes for every customer in the dataset.  
  - sold_quantity: The "sold_quantity" column contains the number of units of a product that were sold.  
  - fiscal_year: The "fiscal_year" column holds the fiscal period when the sale of a product occurred.

## Project Focus

This project primarily focuses on developing and showcasing the following SQL skills:

- **Complex Joins and Aggregations**: Demonstrating the ability to perform complex SQL joins and aggregate data meaningfully.
- **Window Functions**: Using advanced window functions for running totals, growth analysis, and time-based queries.
- **Data Segmentation**: Analyzing data across different time frames to gain insights into product performance.
- **Real-World Problem Solving**: Answering business-related questions that reflect real-world scenarios faced by data analysts.
