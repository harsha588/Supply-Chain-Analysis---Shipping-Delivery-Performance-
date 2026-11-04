USE supply_chain;

-- ===========================
-- Shipping Duration Analysis
-- ===========================

SELECT *
FROM data_cleaned;

-- Average Actual Shipping Duration
SELECT ROUND(
	AVG(`Days for shipping (real)`), 2) AS avg_actual_shipping_time
FROM data_cleaned
WHERE `Delivery Status` <> 'Shipping canceled'; 



-- Average Scheduled Shipping Duration
SELECT ROUND(
	AVG(`Days for shipment (scheduled)`), 2) AS avg_scheduled_shipping_time
FROM data_cleaned
WHERE `Delivery Status` <> 'Shipping canceled'; 
	
    

-- Average difference between actual and scheduled shipping duration
SELECT ROUND(
			AVG(`Days for shipping (real)`) - AVG(`Days for shipment (scheduled)`), 2)
            AS avg_shipping_variance
FROM data_cleaned
WHERE `Delivery Status` <> 'Shipping canceled';


-- Orders Exceeding Scheduled Shipping Duration
SELECT `Order Id`, 
		`Order Item Id`, 
		`Shipping Mode`, 
        `Days for shipping (real)` AS scheduled_days, 
        `Days for shipment (scheduled)` AS actual_days,
		(`Days for shipping (real)` - `Days for shipment (scheduled)`) AS delay_days
FROM data_cleaned
WHERE `Days for shipping (real)` > `Days for shipment (scheduled)`
		AND `Delivery Status` <> 'Shipping canceled'
ORDER BY delay_days DESC;






