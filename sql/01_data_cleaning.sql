CREATE TABLE harsha_clean AS
SELECT
    `Row ID`,
    `Order ID`,
    STR_TO_DATE(`Order Date`, '%m/%d/%Y') AS Order_Date,
    STR_TO_DATE(`Ship Date`, '%m/%d/%Y') AS Ship_Date,
    `Customer ID`,
    `Customer Name`,
    Segment,
    Country,
    City,
    State,
    Region,
    Category,
    `Sub-Category`,
    CAST(Sales AS DECIMAL(10,2)) AS Sales,
    CAST(Profit AS DECIMAL(10,2)) AS Profit,
    CAST(Discount AS DECIMAL(5,2)) AS Discount,
    Quantity
FROM harsha;
