SELECT
shipments.id,
deliveries.customer_rating,
(cost/weight_kg) AS cost_per_kg
FROM shipments
JOIN deliveries
ON shipments.id = deliveries.shipment_id
ORDER BY customer_rating DESC,
cost_per_kg ASC
LIMIT 10;
