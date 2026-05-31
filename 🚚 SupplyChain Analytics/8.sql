SELECT
id,
(revenue-cost) AS profit
FROM shipments
ORDER BY profit DESC
LIMIT 1;
