# Sales Performance Analysis

## Project Overview
This project analyzes historical sales data to identify trends in revenue, product performance, deal size segmentation, and order outcomes. The analysis was performed using SQL in Google BigQuery, with data cleaned and prepared in Excel.

## Tools Used
- Microsoft Excel (data cleaning)
- Google BigQuery (SQL querying)
- GitHub (portfolio presentation)

## Dataset
- Source: Sample sales dataset
- Raw data: `Data/raw_sales_data.csv`
- Cleaned data: `Data/sales_data_modified.csv`

Customer-identifying and address fields were removed to focus the analysis on transactional, product, and geographic performance.

## Business Questions Answered
1. Which product lines generate the most revenue?
2. Which countries and territories drive the most sales?
3. How does deal size impact order volume and total revenue?
4. What is the average order value by deal size?
5. How does order performance vary by status?
6. Which product codes (SKUs) contribute the most to revenue?
7. Are there any data quality issues that could impact reporting accuracy?

Each question is answered using a dedicated SQL query stored in the `/sql` directory.

## Repository Structure

```text
Sales-Performance-Analysis/
├── Data/
│   ├── raw_sales_data.csv
│   └── sales_data_modified.csv
├── Excel/
│   ├── sales_data_original.xlsx
│   └── sales_data_modified.xlsx
├── Screenshots/
│   ├── orders_by_status.png
│   └── productline_revenue.png
├── sql/
│   ├── 01_sales_by_productline.sql
│   ├── 02_sales_by_country.sql
│   ├── 03_sales_and_orders_by_dealsize.sql
│   ├── 04_aov_by_dealsize.sql
│   ├── 05_order_performance_by_status.sql
│   ├── 06_highest_revenue_by_product.sql
│   └── 07_data_quality_check.sql
└── README.md
```



