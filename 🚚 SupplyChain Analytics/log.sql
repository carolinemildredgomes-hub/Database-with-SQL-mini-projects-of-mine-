-- ==================================================
-- SupplyChain Analytics Investigation Log
-- Author: Caroline Mildred Gomes
-- ==================================================

-- Verify all tables exist
.tables

-- Inspect warehouse data
SELECT * FROM warehouses LIMIT 5;

-- Inspect driver data
SELECT * FROM drivers LIMIT 5;

-- Inspect customer data
SELECT * FROM customers LIMIT 5;

-- Inspect shipment data
SELECT * FROM shipments LIMIT 5;

-- Inspect delivery data
SELECT * FROM deliveries LIMIT 5;

-- Count records in each table
SELECT COUNT(*) FROM warehouses;
SELECT COUNT(*) FROM drivers;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM shipments;
SELECT COUNT(*) FROM deliveries;

-- Find average shipment cost
SELECT ROUND(AVG(cost), 2)
FROM shipments;

-- Find delayed shipments
SELECT *
FROM shipments
WHERE status = 'Delayed';

-- Find top revenue warehouses
SELECT
    warehouses.warehouse_name,
    SUM(shipments.revenue) AS total_revenue
FROM warehouses
JOIN shipments
ON warehouses.id = shipments.warehouse_id
GROUP BY warehouses.id
ORDER BY total_revenue DESC;

-- Find highest-rated drivers
SELECT *
FROM drivers
WHERE rating =
(
    SELECT MAX(rating)
    FROM drivers
);

-- Calculate shipment profit
SELECT
    id,
    revenue,
    cost,
    revenue - cost AS profit
FROM shipments
ORDER BY profit DESC;

-- Full operational report
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
