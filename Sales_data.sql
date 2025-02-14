-- Step 1: Basic Sales Metrics
SELECT SUM(TransactionAmount) AS Total_Revenue, 
       COUNT(TransactionID) AS Total_Transactions, 
       AVG(TransactionAmount) AS Avg_Transaction 
FROM sales_data;

-- Step 2: Customer Insights
SELECT COUNT(DISTINCT CustomerID) AS Unique_Customers, 
       AVG(CustomerAge) AS Avg_Customer_Age 
FROM sales_data;



-- Step 3: Product Performance
SELECT ProductName, SUM(Quantity) AS Total_Sold 
FROM sales_data 
GROUP BY ProductName 
ORDER BY Total_Sold DESC 
LIMIT 5;

SELECT ProductName, SUM(TransactionAmount) AS Total_Revenue 
FROM sales_data 
GROUP BY ProductName 
ORDER BY Total_Revenue DESC 
LIMIT 5;


-- Step 4: Store and Regional Analysis
SELECT StoreType, SUM(TransactionAmount) AS Total_Sales 
FROM sales_data 
WHERE StoreType IS NOT NULL
GROUP BY StoreType;

SELECT Region, SUM(TransactionAmount) AS Total_Sales 
FROM sales_data 
WHERE Region IS NOT NULL
GROUP BY Region;
