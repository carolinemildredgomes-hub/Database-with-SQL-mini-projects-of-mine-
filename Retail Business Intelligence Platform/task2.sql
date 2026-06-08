CREATE VIEW customer_spending AS
SELECT
    c.customer_name,
    SUM(p.price * s.quantity) AS total_spent
FROM customers c
JOIN sales s
ON c.id = s.customer_id
JOIN products p
ON s.product_id = p.id
GROUP BY c.id
ORDER BY total_spent DESC;
