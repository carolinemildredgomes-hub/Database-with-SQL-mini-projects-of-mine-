SELECT DISTINCT
warehouse_name
FROM warehouses
JOIN shipments
ON warehouses.id = shipments.warehouse_id
WHERE status='Delayed';
