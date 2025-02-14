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



-- Step 5: Payment & Discounts Analysis
SELECT PaymentMethod, COUNT(*) AS Count 
FROM sales_data 
WHERE PaymentMethod IS NOT NULL
GROUP BY PaymentMethod 
ORDER BY Count DESC;


SELECT AVG(DiscountPercent) AS Avg_Discount FROM sales_data;

SELECT DiscountPercent, AVG(TransactionAmount) AS Avg_Sales 
FROM sales_data 
GROUP BY DiscountPercent 
ORDER BY DiscountPercent DESC;



-- Step 6: Returns & Feedback Analysis
SELECT 
    (COUNT(CASE WHEN Returned = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS Return_Rate 
FROM sales_data;

SELECT AVG(FeedbackScore) AS Avg_Feedback_Score FROM sales_data;

SELECT Returned, AVG(FeedbackScore) AS Avg_Feedback 
FROM sales_data 
GROUP BY Returned;


-- Step 7: Delivery & Shipping Analysis
SELECT AVG(DeliveryTimeDays) AS Avg_Delivery_Time FROM sales_data;

SELECT SUM(ShippingCost) AS Total_Shipping_Cost FROM sales_data;

SELECT DeliveryTimeDays, AVG(FeedbackScore) AS Avg_Feedback 
FROM sales_data 
GROUP BY DeliveryTimeDays 
ORDER BY DeliveryTimeDays;