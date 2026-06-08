CREATE VIEW most_reviewed AS
SELECT
    p.product_name,
    COUNT(r.id) AS review_count
FROM products p
JOIN reviews r
ON p.id = r.product_id
GROUP BY p.id
ORDER BY review_count DESC;
