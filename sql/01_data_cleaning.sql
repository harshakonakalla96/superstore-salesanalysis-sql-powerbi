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
    `Postal Code`,
    Region,
    Category,
    `Sub-Category`,
    CAST(Sales AS DECIMAL(12,4)) AS Sales,
    CAST(Profit AS DECIMAL(12,4)) AS Profit,
    CAST(Discount AS DECIMAL(6,4)) AS Discount,
    Quantity
FROM harsha;
