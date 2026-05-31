SELECT
warehouse_name,
AVG(revenue-cost) AS avg_profit
FROM warehouses
JOIN shipments
ON warehouses.id=shipments.warehouse_id
GROUP BY warehouses.id
ORDER BY avg_profit
LIMIT 5;
