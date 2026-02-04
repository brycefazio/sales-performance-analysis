-- Tool: Google BigQuery
-- Dataset: performance-analysis-486216.sales_analysis.sales

-- Q2: Which countries and territories drive the most sales?

SELECT
  COUNTRY,
  TERRITORY,
  ROUND(SUM(SALES), 2) AS total_sales
FROM `sales_analysis.sales`
GROUP BY COUNTRY, TERRITORY
ORDER BY total_sales DESC;