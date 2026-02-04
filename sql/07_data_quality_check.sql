-- Tool: Google BigQuery
-- Dataset: performance-analysis-486216.sales_analysis.sales

-- Q7: Are there any data quality issues that could impact reporting accuracy?

SELECT
  COUNTIF(SALES <= 0) AS invalid_sales_rows,
  COUNTIF(QUANTITYORDERED <= 0) AS invalid_quantity_rows,
  COUNTIF(PRICEEACH <= 0) AS invalid_price_rows,
  COUNTIF(MSRP <= 0) AS invalid_msrp_rows,
FROM `sales_analysis.sales`;
