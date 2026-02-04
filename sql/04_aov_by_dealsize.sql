-- Tool: Google BigQuery
-- Dataset: performance-analysis-486216.sales_analysis.sales

-- Q4: What is the average order value by deal size?

SELECT
  DEALSIZE AS deal_size,
  ROUND(SUM(SALES) / COUNT(DISTINCT ORDERNUMBER), 2) AS avg_order_value
FROM `sales_analysis.sales`
GROUP BY deal_size
ORDER BY avg_order_value DESC;