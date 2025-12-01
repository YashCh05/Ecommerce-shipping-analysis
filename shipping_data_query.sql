CREATE DATABASE shipping_db;
USE shipping_db;

-- Total Number of orders
SELECT 
   COUNT(*)
FROM shipping_data;

-- Count orders by delivery status
SELECT 
     Delivery_Status,
     COUNT(*)
FROM shipping_data 
GROUP BY Delivery_Status;

-- Average delivery days by shipping mode
SELECT
     Shipping_Mode,
     Avg(Delivery_Days)
FROM shipping_data
GROUP BY Shipping_Mode;

-- Average shipping cost by region
SELECT 
	 Customer_Region,
     AVG(Shipping_Cost)
FROM shipping_data
GROUP BY Customer_Region;

-- Most common product category
SELECT
     Product_Category,
     COUNT(*) As total_orders
FROM shipping_data
GROUP BY Product_Category
ORDER BY COUNT(*) DESC
LIMIT 1;