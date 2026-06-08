CREATE VIEW best_sellers AS
SELECT
    p.product_name,
    SUM(s.quantity) AS units_sold
FROM products p
JOIN sales s
ON p.id = s.product_id
GROUP BY p.id
ORDER BY units_sold DESC;
