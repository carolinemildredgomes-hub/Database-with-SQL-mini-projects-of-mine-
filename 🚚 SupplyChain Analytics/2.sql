SELECT *
FROM shipments
JOIN warehouses
ON shipments.warehouse_id = warehouses.id
WHERE warehouse_name = 'North Hub';
