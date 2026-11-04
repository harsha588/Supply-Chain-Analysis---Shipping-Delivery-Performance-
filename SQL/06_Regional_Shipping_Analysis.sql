USE supply_chain;

select *
from data_cleaned;
-- ===========================
-- Regional Shipping Analysis
-- ===========================

-- late shipment rates(%) by region
SELECT `Order Region`, 
		COUNT(DISTINCT `Order Item Id`) AS total_shipments,
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
GROUP BY `Order Region`
ORDER BY late_shipment_rate DESC;


-- late shipments by country?
SELECT `Order Country`,
		COUNT(DISTINCT `Order Item Id`) AS total_shipments,
        COUNT(DISTINCT CASE
        WHEN `Delivery Status` = 'Late delivery'
        THEN `Order Item Id`
    END) AS late_shipments
FROM data_cleaned
GROUP BY `Order Country`
ORDER BY late_shipments DESC;	


-- Which markets have better shipping performance?
SELECT `Market`,
	ROUND(
		COUNT(DISTINCT CASE 
						WHEN `Delivery Status` = 'Late delivery' THEN `Order Item Id`
		END ) * 100.0
        / 
        COUNT(DISTINCT CASE 
						WHEN `Delivery Status` <> 'Shipping canceled' THEN `Order Item Id`
		END), 2) AS late_shipment_rate
FROM data_cleaned
GROUP BY `Market`
ORDER BY late_shipment_rate DESC;



-- Average Shipping Duration by Region
SELECT
    `Order Region`,
    COUNT(DISTINCT `Order Item Id`) AS total_shipments,
    ROUND(
        AVG(`Days for shipping (real)`), 2
    ) AS avg_actual_shipping_days,
    ROUND(
        AVG(`Days for shipment (scheduled)`), 2
    ) AS avg_scheduled_shipping_days
FROM data_cleaned
WHERE `Delivery Status` <> 'Shipping canceled'
GROUP BY `Order Region`
ORDER BY avg_actual_shipping_days DESC;


























