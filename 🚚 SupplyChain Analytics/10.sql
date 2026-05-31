SELECT
drivers.first_name,
drivers.last_name,
shipments.cost,
shipments.revenue,
deliveries.delivery_time_hours
FROM shipments
JOIN drivers
ON shipments.driver_id = drivers.id
JOIN deliveries
ON shipments.id = deliveries.shipment_id;
