1. Top 10 Customers by Sales
SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM harsha_clean
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

2. Customer Sales Ranking (Window Function)
SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales,
    RANK() OVER (ORDER BY SUM(Sales) DESC) AS Sales_Rank
FROM harsha_clean
GROUP BY `Customer Name`;

3. Revenue by Segment
SELECT
    Segment,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM harsha_clean
GROUP BY Segment
ORDER BY Total_Sales DESC;

4. Orders Per Customer
SELECT
    COUNT(DISTINCT `Order ID`) /
    COUNT(DISTINCT `Customer ID`) AS Orders_Per_Customer
FROM harsha_clean;
