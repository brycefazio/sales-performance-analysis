-- Tool: Google BigQuery
-- Dataset: performance-analysis-486216.sales_analysis.sales

-- Q3: How does deal size impact order volume and total revenue?

SELECT
  DEALSIZE AS deal_size,
  COUNT(DISTINCT ORDERNUMBER) AS order_count,
  ROUND(SUM(SALES), 2) AS total_sales
FROM `sales_analysis.sales`
GROUP BY deal_size
ORDER BY total_sales DESC;