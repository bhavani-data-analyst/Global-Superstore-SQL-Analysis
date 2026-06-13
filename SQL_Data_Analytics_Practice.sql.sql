SELECT * FROM dbo.[order];

SELECT customer_name, sales, profit
FROM dbo.[order];

SELECT customer_name, category, sales
FROM dbo.[order]
WHERE category = 'Technology';

SELECT customer_name, sales, profit
FROM dbo.[order]
WHERE sales > 5000


SELECT customer_name, category, sales
FROM dbo.[order]
WHERE category = 'Technology'
AND sales > 5000;

SELECT customer_name, sales, profit
FROM dbo.[order]
ORDER BY sales DESC;

SELECT customer_name, sales, profit
FROM dbo.[order]
ORDER BY sales ASC;

SELECT TOP 10 customer_name, sales, profit
FROM dbo.[order]
ORDER BY sales DESC;

SELECT TOP 5 customer_name, sales, profit
FROM dbo.[order]
ORDER BY profit ASC;

SELECT DISTINCT category
FROM dbo.[order];

SELECT DISTINCT region
FROM dbo.[order];

SELECT DISTINCT segment
FROM dbo.[order];

SELECT DISTINCT category, region
FROM dbo.[order];

SELECT COUNT(*) AS Total_orders
FROM dbo.[order];

SELECT COUNT(DISTINCT category) AS Unique_categories
FROM dbo.[order];

SELECT SUM(sales) AS Total_sales
FROM dbo. [order];

SELECT SUM(profit) AS Total_profit
FROM dbo.[order];

SELECT AVG(sales) AS Total_sales
FROM dbo.[order];

SELECT AVG(profit) AS Total_profit
FROM dbo.[order];

SELECT MAX(sales) AS Highest_sales
FROM dbo.[order];

SELECT MIN(profit) AS Lowest_profit
FROM dbo.[order];

SELECT category,
SUM(sales) AS Total_sales
FROM dbo.[order]
GROUP BY category;

SELECT region,
SUM(profit) AS Total_profits
FROM dbo.[order]
GROUP BY region;

SELECT category,
SUM(sales) AS Total_sales
FROM dbo.[order]
GROUP BY category
ORDER BY Total_sales DESC;

SELECT region,
SUM(profit) AS Total_profit
FROM dbo.[order]
GROUP BY region
ORDER BY Total_profit DESC;

SELECT category,
SUM(sales) AS Total_sales
FROM dbo.[order]
GROUP BY category
HAVING SUM(sales) > 400000;

SELECT region,
SUM(profit) AS Total_profit
FROM dbo.[order]
GROUP BY region 
HAVING SUM(profit) > 50000
ORDER BY Total_profit DESC;

SELECT customer_name, profit,
CASE
     WHEN profit > 500 THEN 'High profit'
     WHEN PRofit > 0   THEN 'Medium profit'
     ELSE 'Loss'
END AS Profit_status
FROM dbo.[order];

SELECT product_name, sales,
CASE
WHEN sales > 1000 THEN 'High sales'
WHEN sales > 500  THEN 'Medium sales'
ELSE 'Loss sales'
END AS Sales_status
FROM dbo.[order];

SELECT
    YEAR(order_date) AS order_year,
    COUNT(*) AS Total_order
  FROM dbo.[order]
  GROUP BY YEAR(order_date)
  ORDER BY order_year;

SELECT 
   YEAR (order_date) AS order_year,
   SUM(sales) AS Total_sales
FROM dbo.[order]
GROUP BY YEAR(order_date)
ORDER BY order_year;

SELECT TOP 10
      customer_name,
   SUM(sales) AS Total_sales
FROM dbo.[order]
GROUP BY customer_name
ORDER BY Total_sales DESC;

SELECT TOP 10 
    customer_name,
   SUM(profit) AS Total_profit
FROM dbo.[order]
GROUP BY customer_name
ORDER BY Total_profit DESC;

SELECT TOP 10
          region,
		  SUM(sales) AS Total_sales,
		  SUM(profit) AS Total_profit
FROM dbo.[order]
GROUP BY region
ORDER BY Total_sales DESC;

SELECT TOP 10
          category,
		  SUM(sales) AS Total_sales, 
		  SUM(profit) AS Total_profit
FROM dbo.[order]
GROUP BY category 
ORDER BY Total_sales DESC;

CREATE VIEW Region_Sales_Profit AS
       SELECT 
	        region,
			SUM(sales) AS Total_sales,
			SUM(profit) AS Ttal_profit
FROM dbo.[order]
GROUP BY region;

SELECT *
FROM Region_Sales_Profit;

1: Highest Sales Category
SELECT TOP 1
    category,
    SUM(sales) AS Total_Sales
FROM dbo.[order]
GROUP BY category
ORDER BY Total_Sales DESC;

2: Most Profitable Region
SELECT TOP 1
      region,
    SUM(profit) AS Total_Profit
FROM dbo.[order]
GROUP BY region
ORDER BY Total_Profit DESC;

3: Most Profitable Customer
SELECT TOP 1
    customer_name,
    SUM(profit) AS Total_Profit
FROM dbo.[order]
GROUP BY customer_name
ORDER BY Total_Profit DESC;