use supply_chain;

-- ========================
-- Shipping Mode Analysis
-- ========================

SELECT *
FROM data_cleaned;


-- Shipment Count by Shipping Mode
SELECT `Shipping Mode`,
COUNT(DISTINCT `Order Item Id`) AS total_shipments
FROM data_cleaned
GROUP BY `Shipping Mode`
ORDER BY total_shipments DESC;



-- late shipment rate(%) by shipping mode
SELECT `Shipping Mode`,
COUNT(DISTINCT `Order Item Id`) as total_shipments,
COUNT(DISTINCT CASE
        WHEN `Delivery Status` = 'Late delivery'
        THEN `Order Item Id`
    END) AS late_shipments,
	ROUND(
		COUNT(DISTINCT CASE 
						WHEN `Delivery Status` = 'Late delivery' THEN `Order Item Id`
		END ) * 100.0
        / 
        COUNT(DISTINCT CASE 
						WHEN `Delivery Status` <> 'Shipping canceled' THEN `Order Item Id`
		END), 2) AS late_shipment_rate
FROM data_cleaned
GROUP BY `Shipping Mode`
ORDER BY late_shipment_rate DESC;



-- Lowest Late Shipment Rate by Shipping Mode
SELECT `Shipping Mode`,
COUNT(DISTINCT `Order Item Id`) as total_shipments,
COUNT(DISTINCT CASE
        WHEN `Delivery Status` = 'Late delivery'
        THEN `Order Item Id`
    END) AS late_shipments,
	ROUND(
		COUNT(DISTINCT CASE 
						WHEN `Delivery Status` = 'Late delivery' THEN `Order Item Id`
		END ) * 100.0
        / 
        COUNT(DISTINCT CASE 
						WHEN `Delivery Status` <> 'Shipping canceled' THEN `Order Item Id`
		END), 2) AS late_shipment_rate
FROM data_cleaned
GROUP BY `Shipping Mode`
ORDER BY late_shipment_rate ASC;



-- Average Actual Shipping Duration by Shipping Mode
SELECT `Shipping Mode`,
COUNT(DISTINCT `Order Item Id`) as total_shipments,
ROUND(
	AVG(`Days for shipping (real)`) , 2) as avg_actual_shipping_days
FROM data_cleaned
	WHERE `Delivery Status` <> 'Shipping canceled'
GROUP BY `Shipping Mode`
ORDER BY avg_actual_shipping_days DESC;


