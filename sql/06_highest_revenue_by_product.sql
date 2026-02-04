-- Tool: Google BigQuery
-- Dataset: performance-analysis-486216.sales_analysis.sales

-- Q6: Which product codes (SKUs) contribute the most to revenue?

SELECT
  PRODUCTCODE AS product_code,
  PRODUCTLINE AS product_line,
  ROUND(SUM(SALES), 2) AS total_sales
FROM `sales_analysis.sales`
GROUP BY product_code, product_line
ORDER BY total_sales DESC
LIMIT 10;