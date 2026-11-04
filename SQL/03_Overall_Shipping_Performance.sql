USE supply_chain;
-- ==============================
-- Overall Shipping Performance
-- ==============================
-- Total Shipments
SELECT 
	COUNT(DISTINCT `Order Item Id`) as total_shipments
FROM data_cleaned;


-- Late Shipments
SELECT 
	COUNT(DISTINCT `Order Item Id`) as total_shipments
FROM data_cleaned
WHERE `Delivery Status` = 'Late delivery';



-- Late Shipment Rate (%)
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




-- On-time Shipment Rate (%)
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



-- Shipment Distribution by Delivery Status
SELECT
    `Delivery Status`,
    COUNT(DISTINCT `Order Item Id`) AS total_shipments,
    ROUND(
        COUNT(DISTINCT `Order Item Id`) * 100.0 /
        (SELECT COUNT(DISTINCT `Order Item Id`)
         FROM data_cleaned),
        2
    ) AS shipment_percentage
FROM data_cleaned
GROUP BY `Delivery Status`
ORDER BY total_shipments DESC;
















