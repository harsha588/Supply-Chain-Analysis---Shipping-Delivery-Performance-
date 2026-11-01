-- What is the total number of shipments?
SELECT `Delivery Status`,
COUNT(DISTINCT `Order Item Id`) AS total_shipments
FROM data_cleaned
GROUP BY `Delivery Status`
ORDER BY total_shipments DESC;

--  How many shipments are late?
SELECT COUNT(DISTINCT `Order Item Id`) AS late_shipments
FROM data_cleaned
WHERE `Delivery Status` = 'Late delivery';

-- What is the overall late shipment rate?
SELECT 
	ROUND(
		COUNT(DISTINCT CASE 
						WHEN `Delivery Status` = 'Late delivery' THEN `Order Item Id`
		END ) * 100.0
        / 
        COUNT(DISTINCT CASE 
						WHEN `Delivery Status` <> 'Shipping canceled' THEN `Order Item Id`
		END), 2) AS late_shipment_rate
FROM data_cleaned;
                     

-- What percentage of shipments are on time?
SELECT 
ROUND(
	SUM(CASE 
			WHEN `Delivery Status` IN ('Shipping on time', 'Advance shipping') THEN 1
            ELSE 0
	END) * 100
    /
    SUM(
		CASE
			WHEN `Delivery Status` <> 'Shipping canceled' THEN 1
            ELSE 0 
		END ), 2) 
		AS on_time_shipment_rate
FROM data_cleaned;


-- Average actual shipping duration
SELECT 
ROUND(AVG(`Days for shipping (real)`),2) AS avg_shipping_duration
FROM data_cleaned
WHERE `Delivery Status` <> 'Shipping canceled';

-- Average scheduled shipping duration
SELECT 
ROUND(AVG(`Days for shipment (scheduled)`),2) AS avg_shipping_duration
FROM data_cleaned
WHERE `Delivery Status` <> 'Shipping canceled';

-- Difference between actual and scheduled shipping days
SELECT ROUND(
			AVG(`Days for shipping (real)`) - AVG(`Days for shipment (scheduled)`), 2)
            AS avg_shipping_variance
FROM data_cleaned
WHERE `Delivery Status` <> 'Shipping canceled';
