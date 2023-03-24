-- This query returns all the rows from the table "Orders" where the "OrderDate" column is greater 
-- than or equal to the date that is 30 days before the current date and time.
SELECT * FROM Orders WHERE OrderDate >= NOW() - INTERVAL '30 days';

-- This query calculates the number of orders in each month of the current year.

SELECT DATE_TRUNC('month', OrderDate) AS month, COUNT(*) AS order_count
FROM Orders
WHERE DATE_TRUNC('year', OrderDate) = DATE_TRUNC('year', NOW())
GROUP BY month;

-- This query calculates the total sales for the past 3 months

SELECT SUM(TotalPrice) AS total_sales
FROM Orders
WHERE OrderDate >= NOW() - INTERVAL '3 months';








