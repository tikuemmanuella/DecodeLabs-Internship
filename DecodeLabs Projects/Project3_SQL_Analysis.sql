-- PROJECT 3: SQL DATA ANALYSIS
-- Dataset: dbo.Project3_Data

-- 1. View Sample Data
SELECT TOP 10 *
FROM dbo.Project3_Data;

-- 2. Total Orders
SELECT COUNT(*) AS Total_Orders
FROM dbo.Project3_Data;

-- 3. Total Revenue
SELECT SUM(TotalPrice) AS Total_Revenue
FROM dbo.Project3_Data;

-- 4. Average Order Value
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM dbo.Project3_Data;

-- 5. Orders by Product
SELECT Product,
       COUNT(*) AS Total_Orders
FROM dbo.Project3_Data
GROUP BY Product
ORDER BY Total_Orders DESC;

-- 6. Revenue by Product
SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM dbo.Project3_Data
GROUP BY Product
ORDER BY Revenue DESC;

-- 7. Orders by Payment Method
SELECT PaymentMethod,
       COUNT(*) AS Orders
FROM dbo.Project3_Data
GROUP BY PaymentMethod
ORDER BY Orders DESC;

-- 8. Revenue by Referral Source
SELECT ReferralSource,
       SUM(TotalPrice) AS Revenue
FROM dbo.Project3_Data
GROUP BY ReferralSource
ORDER BY Revenue DESC;

-- 9. Shipped Orders
SELECT *
FROM dbo.Project3_Data
WHERE OrderStatus = 'Shipped';

-- 10. Cancelled Orders
SELECT *
FROM dbo.Project3_Data
WHERE OrderStatus = 'Cancelled';

-- 11. Top 10 Highest Value Orders
SELECT TOP 10 *
FROM dbo.Project3_Data
ORDER BY TotalPrice DESC;

-- 12. Average Revenue by Product
SELECT Product,
       AVG(TotalPrice) AS Average_Revenue
FROM dbo.Project3_Data
GROUP BY Product
ORDER BY Average_Revenue DESC;