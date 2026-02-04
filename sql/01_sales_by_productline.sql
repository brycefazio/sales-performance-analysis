-- Tool: Google BigQuery
-- Dataset: performance-analysis-486216.sales_analysis.sales

-- Q1: Which product lines generate the most revenue?

SELECT
  PRODUCTLINE AS product_line,
  ROUND(SUM(SALES), 2) AS total_sales
FROM `sales_analysis.sales`
GROUP BY product_line
ORDER BY total_sales DESC;