SET GLOBAL local_infile = 1;

DROP DATABASE IF EXISTS supply_chain;
CREATE DATABASE IF NOT EXISTS supply_chain;
USE supply_chain;

DROP TABLE IF EXISTS `data_cleaned`;
CREATE TABLE `data_cleaned` (
  `Type` text,
  `Days for shipping (real)` int DEFAULT NULL,
  `Days for shipment (scheduled)` int DEFAULT NULL,
  `Benefit per order` double DEFAULT NULL,
  `Delivery Status` text,
  `Late_delivery_risk` int DEFAULT NULL,
  `Category Id` int DEFAULT NULL,
  `Category Name` text,
  `Customer City` text,
  `Customer Country` text,
  `Customer Fname` text,
  `Customer Id` int DEFAULT NULL,
  `Customer Lname` text,
  `Customer Segment` text,
  `Customer State` text,
  `Customer Street` text,
  `Customer Zipcode` VARCHAR(10),
  `Department Id` int DEFAULT NULL,
  `Department Name` text,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `Market` text,
  `Order City` text,
  `Order Country` text,
  `Order Customer Id` int DEFAULT NULL,
  `order date (DateOrders)` text,
  `Order Id` int DEFAULT NULL,
  `Order Item Discount` double DEFAULT NULL,
  `Order Item Discount Rate` double DEFAULT NULL,
  `Order Item Id` int DEFAULT NULL,
  `Order Item Profit Ratio` double DEFAULT NULL,
  `Order Item Quantity` int DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Order Item Total` double DEFAULT NULL,
  `Order Region` text,
  `Order State` text,
  `Order Status` text,
  `Product Card Id` int DEFAULT NULL,
  `Product Name` text,
  `Product Price` double DEFAULT NULL,
  `shipping date (DateOrders)` text,
  `Shipping Mode` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOAD DATA LOCAL INFILE 'E:/supply_chain/Data_Cleaned_UTF8.csv'
INTO TABLE data_cleaned
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS total_recods
from data_cleaned;

SELECT *
from data_cleaned
limit 10;
