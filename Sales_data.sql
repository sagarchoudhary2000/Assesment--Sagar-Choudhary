-- Step 1: Basic Sales Metrics
SELECT SUM(TransactionAmount) AS Total_Revenue, 
       COUNT(TransactionID) AS Total_Transactions, 
       AVG(TransactionAmount) AS Avg_Transaction 
FROM sales_data;

-- Step 2: Customer Insights
SELECT COUNT(DISTINCT CustomerID) AS Unique_Customers, 
       AVG(CustomerAge) AS Avg_Customer_Age 
FROM sales_data;