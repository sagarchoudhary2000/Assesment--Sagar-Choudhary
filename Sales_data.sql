-- Step 1: Basic Sales Metrics
SELECT SUM(TransactionAmount) AS Total_Revenue, 
       COUNT(TransactionID) AS Total_Transactions, 
       AVG(TransactionAmount) AS Avg_Transaction 
FROM sales_data;