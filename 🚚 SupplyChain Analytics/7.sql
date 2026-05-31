SELECT
first_name,
last_name
FROM drivers
WHERE rating =
(
SELECT MAX(rating)
FROM drivers
);
