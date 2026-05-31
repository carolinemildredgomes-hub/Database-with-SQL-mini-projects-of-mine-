SELECT
drivers.first_name,
drivers.last_name,
shipments.id
FROM drivers
JOIN shipments
ON drivers.id = shipments.driver_id
WHERE rating =
(
SELECT MAX(rating)
FROM drivers
);
