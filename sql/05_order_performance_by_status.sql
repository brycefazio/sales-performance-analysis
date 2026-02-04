-- Tool: Google BigQuery
-- Dataset: performance-analysis-486216.sales_analysis.sales

-- Q5: How does order performance vary by status?

SELECT
  STATUS,
  COUNT(DISTINCT ORDERNUMBER) AS order_count,
  ROUND(SUM(SALES) / COUNT(DISTINCT ORDERNUMBER), 2) AS avg_order_value,
  ROUND(SUM(SALES), 2) AS total_sales
FROM `sales_analysis.sales`
GROUP BY STATUS
ORDER BY order_count DESC;