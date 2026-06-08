CREATE VIEW category_revenue AS
SELECT
    p.category,
    SUM(p.price * s.quantity) AS revenue
FROM products p
JOIN sales s
ON p.id = s.product_id
GROUP BY p.category
ORDER BY revenue DESC;
