SELECT
warehouse_name,
SUM(revenue) AS total_revenue
FROM warehouses
JOIN shipments
ON warehouses.id=shipments.warehouse_id
GROUP BY warehouses.id
ORDER BY total_revenue DESC
LIMIT 5;
