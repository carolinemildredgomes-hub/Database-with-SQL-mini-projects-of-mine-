CREATE VIEW low_stock AS
SELECT *
FROM products
WHERE stock_quantity < 10;
