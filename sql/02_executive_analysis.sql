-- =========================================
-- Executive Overview Analysis
-- =========================================

-- 1. Overall Business Performance
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Profit)/SUM(Sales) AS Profit_Margin,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    SUM(Sales)/COUNT(DISTINCT `Order ID`) AS Avg_Order_Value
FROM harsha_clean;


-- 2. Sales by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Profit)/SUM(Sales) AS Profit_Margin
FROM harsha_clean
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 3. Profit by Region
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM harsha_clean
GROUP BY Region
ORDER BY Total_Profit DESC;


-- 4. Monthly Sales Trend
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM harsha_clean
GROUP BY Year, Month
ORDER BY Year, Month;
