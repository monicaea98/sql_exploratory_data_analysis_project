# SQL Exploratory Data Analysis and Business Intelligence

## 📌 Project Overview

This project focuses on exploring and analyzing sales data using SQL Server to uncover business insights related to sales performance, customer behavior, and product performance.

The analysis uses a Gold-layer data model consisting of customer and product dimension tables and a sales fact table. It includes exploratory data analysis (EDA), business metrics, time-based analysis, customer segmentation, product segmentation, and reusable SQL reporting views.

## 🎯 Project Objectives

- Explore database structures, tables, columns, and dimension values.
- Calculate key business metrics and KPIs.
- Analyze sales performance over time.
- Identify top-performing and underperforming products.
- Understand customer demographics, purchasing behavior, and spending patterns.
- Segment customers based on spending and purchasing history.
- Evaluate product performance by revenue.
- Create reusable customer and product reporting views.

## 🛠️ Tools and Technologies

- **SQL Server** – Data exploration, analysis, and reporting.
- **T-SQL** – Queries, aggregations, CTEs, window functions, and reporting views.
- **GitHub** – Project documentation and version control.

## 🗂️ Data Model

The analysis uses three tables from the Gold layer:

| Table | Description |
|---|---|
| `gold.dim_customers` | Customer information, including names, demographics, birthdates, and countries. |
| `gold.dim_products` | Product information, including names, categories, subcategories, and costs. |
| `gold.fact_sales` | Sales transactions containing order dates, order numbers, product keys, customer keys, quantities, and sales amounts. |

The fact table connects customer and product dimensions through their respective keys, enabling analysis across multiple business perspectives.

## 🔍 Analysis Performed

### 1. Database Exploration

- Inspected database tables and columns using `INFORMATION_SCHEMA`.
- Explored unique countries, product categories, subcategories, and product names.
- Identified the available sales date range and customer age distribution.

### 2. Key Business Metrics

Calculated essential business KPIs, including:

- Total sales revenue.
- Total quantity sold.
- Average sales amount and product selling price.
- Total number of orders.
- Total number of products.
- Total number of customers.
- Number of customers who placed orders.

### 3. Time-Based Analysis

- Analyzed monthly sales, customer counts, and quantities sold.
- Evaluated yearly product sales performance.
- Compared product sales against historical averages.
- Measured year-over-year changes using the `LAG()` window function.
- Calculated cumulative monthly sales using running totals.

### 4. Customer Analysis

- Analyzed customer distribution by country and gender.
- Ranked customers by total revenue generated.
- Evaluated customer purchasing history and spending behavior.
- Segmented customers into three groups:
  - **VIP:** At least 12 months of purchasing history and more than 5,000 in total spending.
  - **Regular:** At least 12 months of purchasing history and 5,000 or less in total spending.
  - **New:** Less than 12 months of purchasing history.

### 5. Product Analysis

- Analyzed product distribution by category.
- Calculated average product costs by category.
- Evaluated revenue contribution by product category.
- Identified the five highest- and lowest-revenue products.
- Segmented products into cost ranges.
- Classified products by revenue performance as High-Performer, Mid-Range, or Low-Performer.

### 6. Advanced SQL Reporting

Created two reusable reporting views to consolidate customer and product metrics.

**`gold.report_customers`**

Provides customer-level insights, including:

- Customer demographics and age groups.
- Customer segments.
- Total orders, sales, quantity purchased, and distinct products.
- Purchasing lifespan and recency.
- Average order value.
- Average monthly spending.

**`gold.report_products`**

Provides product-level insights, including:

- Product categories, subcategories, and costs.
- Revenue-based product segments.
- Total orders, sales, quantity sold, and unique customers.
- Product sales lifespan and recency.
- Average selling price.
- Average order revenue.
- Average monthly revenue.

## 🧠 SQL Skills Demonstrated

- Database metadata exploration using `INFORMATION_SCHEMA`.
- Aggregate functions: `SUM()`, `AVG()`, `COUNT()`, `MIN()`, and `MAX()`.
- Joins between fact and dimension tables.
- Common Table Expressions (CTEs).
- Subqueries and derived tables.
- Window functions: `LAG()`, `AVG() OVER()`, and cumulative `SUM() OVER()`.
- Conditional logic using `CASE WHEN`.
- Date functions such as `DATEDIFF()`, `YEAR()`, `GETDATE()`, and `DATETRUNC()`.
- Revenue contribution and percentage calculations.
- Customer and product segmentation.
- Creating reusable SQL views.
- Business-oriented reporting and KPI development.

## 📈 Business Value

The analysis supports business decision-making by helping stakeholders:

- Monitor overall sales performance and trends.
- Identify products that generate the most and least revenue.
- Understand which product categories contribute most to total sales.
- Evaluate customer spending patterns and engagement.
- Distinguish high-value customers from other customer segments.
- Track historical performance and identify changes over time.
