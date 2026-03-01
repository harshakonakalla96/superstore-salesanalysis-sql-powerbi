-- =========================================
-- Profit & Margin Analysis
-- =========================================

-- 1. Profit by Sub-Category
SELECT
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Profit)/SUM(Sales) AS Profit_Margin
FROM harsha_clean
GROUP BY `Sub-Category`
ORDER BY Total_Profit ASC;


-- 2. Loss-Making Products
SELECT
    `Sub-Category`,
    SUM(Profit) AS Total_Profit
FROM harsha_clean
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;


-- 3. Discount Impact by Category
SELECT
    Category,
    AVG(Discount) AS Avg_Discount,
    SUM(Profit) AS Total_Profit
FROM harsha_clean
GROUP BY Category
ORDER BY Avg_Discount DESC;


-- 4. Total Loss
SELECT
    SUM(Profit) AS Total_Loss
FROM harsha_clean
WHERE Profit < 0;
