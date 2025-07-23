-- 1.CUSTOMER SEGMENTATION
-- RFM Segmentation
SELECT 
    customerid,
    JULIANDAY('2024-12-20') - JULIANDAY(MAX(OrderDate)) AS Recency, --Fixed Reference date so that I get the same result everytime
    COUNT(O.orderid) AS TotalOrders,
    SUM(unitprice * quantity * (1 - discount)) AS AmountSpent
from    
    Orders O 
INNER JOIN 
    "Order Details" D 
ON 
    O.OrderID = D.OrderID
GROUP BY 
    customerid
ORDER BY 
    Recency, TotalOrders Desc, AmountSpent DESC


-- FINAL RFM QUERY
SELECT 
    customerid, 
    JULIANDAY('2024-12-20') - JULIANDAY(MAX(OrderDate)) AS Recency,
    COUNT(O.orderid) AS TotalOrders,
    SUM(unitprice * quantity * (1 - discount)) AS AmountSpent,
    CASE
        WHEN JULIANDAY('now') - JULIANDAY(MAX(OrderDate)) <= 450 
             AND COUNT(O.orderid) >= 7000 
             AND SUM(unitprice * quantity * (1 - discount)) >= 5250000 THEN 'Champion'
        WHEN COUNT(O.orderid) >= 6500 
             OR SUM(unitprice * quantity * (1 - discount)) >= 5000000 THEN 'Potential Loyalist'
        ELSE 'At Risk'
    END AS CustomerSegment
FROM 
    Orders O 
INNER JOIN 
    "Order Details" D 
ON 
    O.OrderID = D.OrderID
GROUP BY 
    customerid
ORDER BY 
    Recency, TotalOrders Desc, AmountSpent DESC


-- Order Value 
SELECT 
    customerid, 
    Avg(unitprice * quantity * (1 - discount)) AS AvgOrderValue
FROM 
    Orders O 
INNER JOIN 
    "Order Details" D 
ON 
    O.OrderID = D.OrderID
GROUP BY 
    customerid
ORDER BY 
    AvgOrderValue DESC


-- FINAL ORDER VALUE QUERY
SELECT 
    customerid, 
    Avg(unitprice * quantity * (1 - discount)) AS AvgOrderValue,
    CASE
        WHEN Avg(unitprice * quantity * (1 - discount)) > 741 THEN 'High Value' 
        WHEN Avg(unitprice * quantity * (1 - discount)) between 727 and 741 THEN 'Medium Value' 
        ELSE 'Low Value'
    END AS CustomerValue
FROM 
    Orders O 
INNER JOIN 
    "Order Details" D 
ON 
    O.OrderID = D.OrderID
GROUP BY 
    customerid
ORDER BY 
    AvgOrderValue DESC



-- 2.PRODUCT ANALYSIS
-- High Revenue Value: Identify the top 10 revenue generator products
SELECT 
    P.ProductID, 
    ProductName, 
    SUM(D.UnitPrice * D.Quantity * (1 - D.Discount)) AS Revenue
FROM 
    "Order Details" AS D
INNER JOIN 
    Products AS P ON D.ProductID = P.ProductID
GROUP BY 
    P.ProductID, ProductName
ORDER BY 
    Revenue DESC
LIMIT 10


-- High Sales Volume: Determine the top 10 most frequently ordered products
CREATE VIEW Sales_Volume_Products AS -- View will be used for high and low sales volume
SELECT 
    P.ProductID, 
    ProductName, 
    SUM(D.Quantity) AS TotalQuantitySold
FROM 
    "Order Details" AS D
INNER JOIN 
    Products AS P ON D.ProductID = P.ProductID
GROUP BY 
    P.ProductID, ProductName


SELECT * FROM Sales_Volume_Products ORDER BY TotalQuantitySold DESC LIMIT 10



-- Slow Movers: Identify products with low sales volume. (5 product)
SELECT * FROM Sales_Volume_Products ORDER BY TotalQuantitySold  LIMIT 5




-- 3.ORDER ANALYSIS
--Seasonality: Identify Seasonal Fluctuations in Order Volume
SELECT 
    strftime('%m', OrderDate) AS OrderMonth,  
    COUNT(OrderID) AS TotalOrders
FROM 
    Orders
GROUP BY 
    OrderMonth
ORDER BY 
    OrderMonth

    
-- Day-of-the-Week Analysis: Most Popular Order Days    
 SELECT 
    CASE strftime('%w', OrderDate)
        WHEN '0' THEN 'Sunday' -- Default index for weekdays starts at 0 for Sunday
        WHEN '1' THEN 'Monday'
        WHEN '2' THEN 'Tuesday'
        WHEN '3' THEN 'Wednesday'
        WHEN '4' THEN 'Thursday'
        WHEN '5' THEN 'Friday'
        WHEN '6' THEN 'Saturday'
    END AS WeekDay,
    COUNT(OrderID) AS TotalOrders
FROM 
    Orders
GROUP BY 
    WeekDay
ORDER BY 
    TotalOrders DESC
    
    
--Order Size Analysis: Distribution of Order Quantities  
SELECT 
    CASE 
        WHEN TotalQuantity BETWEEN 1 AND 10 THEN '1-10'
        WHEN TotalQuantity BETWEEN 11 AND 20 THEN '11-20'
        WHEN TotalQuantity BETWEEN 21 AND 50 THEN '21-50'
        WHEN TotalQuantity BETWEEN 51 AND 100 THEN '51-100'
        WHEN TotalQuantity BETWEEN 101 AND 500 THEN '101-500'
        WHEN TotalQuantity BETWEEN 501 AND 1000 THEN '501-1000'
        WHEN TotalQuantity BETWEEN 1001 AND 2000 THEN '1001-2000'
        WHEN TotalQuantity BETWEEN 2001 AND 3000 THEN '2001-3000'
        ELSE '3000+'
    END AS OrderSizeRange,
    COUNT(OrderID) AS OrderCount
FROM (
    SELECT 
        OrderID, 
        SUM(Quantity) AS TotalQuantity
    FROM 
        "Order Details"
    GROUP BY 
        OrderID
) AS OrderDetails
GROUP BY 
    OrderSizeRange
ORDER BY  -- To ensure the order is correct 
    CASE 
        WHEN TotalQuantity BETWEEN 1 AND 10 THEN 1
        WHEN TotalQuantity BETWEEN 11 AND 20 THEN 2
        WHEN TotalQuantity BETWEEN 21 AND 50 THEN 3
        WHEN TotalQuantity BETWEEN 51 AND 100 THEN 4
        WHEN TotalQuantity BETWEEN 101 AND 500 THEN 5
        WHEN TotalQuantity BETWEEN 501 AND 1000 THEN 6
        WHEN TotalQuantity BETWEEN 1001 AND 2000 THEN 7
        WHEN TotalQuantity BETWEEN 2001 AND 3000 THEN 8
        ELSE 9
    END



-- 4.EMPLOYEE PERFORMANCE
SELECT 
    E.EmployeeID,
    LastName || ', ' || FirstName AS EmployeeName,
    COUNT(O.OrderID) AS TotalOrders,
    SUM(unitprice * quantity * (1 - discount)) as TotalRevenue,
    AVG(unitprice * quantity * (1 - discount)) AS AverageOrderValue
FROM 
    Employees E
INNER JOIN 
    Orders o ON E.EmployeeID = O.EmployeeID
INNER JOIN 
    "Order Details" OD ON O.OrderID = OD.OrderID
GROUP BY 
    E.EmployeeID, EmployeeName
ORDER BY 
    E.EmployeeID