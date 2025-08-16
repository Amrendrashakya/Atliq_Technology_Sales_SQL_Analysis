# 📊 Atliq Technology Sales - Ad-Hoc Insights

## 📌 Project Overview

This project analyzes **Atliq Technologies' sales data** through ad-hoc insights requested by stakeholders.
The objective is to provide actionable insights into customer behavior, product performance, market reach, and growth trends using **SQL** for data extraction and **Power BI** for visualization.

---

## 🗄️ Database Schema

The project leverages **six key tables**:

### 1. `dim_customer` – Customer Information

* **customer\_code** – Unique identifier for each customer
* **customer** – Customer name (e.g., Flipkart, Atliq Exclusive)
* **platform** – "Brick & Mortar" or "E-Commerce"
* **channel** – Sales channel ("Retailers", "Direct", "Distributors")
* **market** – Customer country
* **region** – Geographical region
* **sub\_zone** – Sub-regional classification

### 2. `dim_product` – Product Information

* **product_code** – Unique product identifier
* **division** – Product groups ("P & A", "N & S", "PC")
* **segment** – Product type (Notebook, Desktop, Peripherals, Accessories, Storage, Networking)
* **category** – Subcategories within each segment
* **product** – Product name
* **variant** – Product variations (features, prices, characteristics)

### 3. `fact_gross_price` – Product Pricing

* **product_code** – Product identifier
* **fiscal_year** – Year (2020, 2021)
* **gross_price** – Base selling price before discounts/taxes

### 4. `fact_manufacturing_cost` – Production Costs

* **product_code** – Product identifier
* **cost_year** – Year of manufacturing
* **manufacturing_cost** – Total production cost (materials, labor, overheads)

### 5. `fact_pre_invoice_deductions` – Discounts & Deductions

* **customer_code** – Customer identifier
* **fiscal_year** – Year
* **pre_invoice_discount_pct** – % discount applied before invoicing

### 6. `fact_sales_monthly` – Monthly Sales Data

* **date** – Month of sales
* **product_code** – Product identifier
* **customer_code** – Customer identifier
* **sold_quantity** – Units sold
* **fiscal_year** – Year of sales

---

## 🛠️ Skills Used

* **SQL**

  * Complex Joins & Aggregations
  * Window Functions (Running totals, YOY growth, Ranking)
  * Data Segmentation (Time-based performance analysis)
* **Power BI**

  * Data Modeling & Relationships
  * DAX Measures & Calculations
  * Interactive Dashboards for stakeholders
* **Business Analysis**

  * Translating business questions into data insights
  * Identifying trends, growth drivers, and cost strategies

---

## 📈 Key Insights

* 🌍 **Market Reach**: AtliQ Exclusive operates across **8 APAC markets**
* 📦 **Product Expansion**: Unique products grew by **36.3% in 2021 vs 2020**
* 💻 **Top Segment**: **Notebook** segment led in both product diversity & sales
* 🎯 **Growth Driver**: **Accessories** showed the highest product growth
* 💰 **Cost Strategy**: Identified **high vs low-cost products** for pricing optimization
* 🛒 **Retail Influence**: **Flipkart & Croma** applied the highest discount rates
* 📅 **Seasonality**: Sales **peaked from October to December** each year
* 🔝 **Top Channel**: **Retailers contributed 73%+** of gross sales in 2021
* 🏆 **Division Leaders**: **AQ Pen Drive DRC** and **AQ Gamers Ms** were top performers

---

## 📊 Dashboard Preview

*(Add a screenshot of your Power BI dashboard here for better impact)*

---

## 🚀 How to Use

1. Clone the repository
2. Import SQL scripts to your database
3. Open the Power BI file (`.pbix`) for interactive insights
4. Explore dashboards and modify queries for custom analysis

---

## 📌 Conclusion

This project demonstrates **end-to-end analytics workflow** – from raw sales data to meaningful business insights.
It highlights expertise in **SQL, Power BI, and real-world problem solving**, making it highly relevant for **Data Analyst & BI roles**.

---
