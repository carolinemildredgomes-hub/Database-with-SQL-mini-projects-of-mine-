INSERT INTO warehouses VALUES
(1,'North Hub','Toronto','Canada'),
(2,'East Hub','New York','USA'),
(3,'West Hub','Los Angeles','USA'),
(4,'Central Hub','Chicago','USA'),
(5,'Europe Hub','Berlin','Germany'),
(6,'Asia Hub','Singapore','Singapore'),
(7,'India Hub','Mumbai','India'),
(8,'Pacific Hub','Sydney','Australia'),
(9,'Middle East Hub','Dubai','UAE'),
(10,'South Hub','Dallas','USA');


INSERT INTO drivers VALUES
(1,'John','Smith','2020-01-10',4.8),
(2,'Sarah','Brown','2019-04-12',4.9),
(3,'David','Wilson','2021-02-15',4.7),
(4,'Emma','Taylor','2018-06-11',4.95),
(5,'Michael','Johnson','2017-05-20',4.6),
(6,'Daniel','Lee','2022-01-03',4.5),
(7,'Olivia','Martin','2019-03-18',4.8),
(8,'Noah','White','2020-07-11',4.4),
(9,'Sophia','Hall','2018-09-13',4.9),
(10,'James','Clark','2021-10-14',4.7),
(11,'Benjamin','Allen','2020-11-22',4.8),
(12,'Charlotte','Young','2019-08-08',4.6),
(13,'Lucas','King','2021-01-01',4.5),
(14,'Amelia','Scott','2018-04-25',4.9),
(15,'Henry','Green','2020-06-17',4.7),
(16,'Ella','Baker','2019-02-19',4.8),
(17,'Alexander','Hill','2018-12-20',4.6),
(18,'Mia','Adams','2021-07-09',4.9),
(19,'Ethan','Nelson','2020-05-14',4.7),
(20,'Grace','Carter','2019-09-29',4.8);

INSERT INTO customers VALUES
(1,'Amazon','USA','E-commerce'),
(2,'Shopify','Canada','Technology'),
(3,'Tesla','USA','Automotive'),
(4,'Apple','USA','Technology'),
(5,'Google','USA','Technology'),
(6,'Samsung','South Korea','Electronics'),
(7,'BMW','Germany','Automotive'),
(8,'Unilever','UK','Consumer Goods'),
(9,'Nestle','Switzerland','Food'),
(10,'Nike','USA','Retail'),
(11,'Adidas','Germany','Retail'),
(12,'Sony','Japan','Electronics'),
(13,'Oracle','USA','Technology'),
(14,'Intel','USA','Technology'),
(15,'Cisco','USA','Technology'),
(16,'Spotify','Sweden','Technology'),
(17,'Uber','USA','Transportation'),
(18,'Airbnb','USA','Technology'),
(19,'SAP','Germany','Technology'),
(20,'Accenture','Ireland','Consulting');





WITH RECURSIVE nums(n) AS (
SELECT 1
UNION ALL
SELECT n+1
FROM nums
WHERE n < 500
)
INSERT INTO shipments
SELECT
n,
((n-1)%10)+1,
((n-1)%20)+1,
'2025-01-01',
'2025-01-03',
CASE
WHEN n%5=0 THEN 'Delayed'
ELSE 'Delivered'
END,
100 + n,
500 + (n*5),
1000 + (n*10)
FROM nums;







WITH RECURSIVE nums(n) AS (
SELECT 1
UNION ALL
SELECT n+1
FROM nums
WHERE n < 500
)
INSERT INTO deliveries
SELECT
n,
n,
((n-1)%20)+1,
24 + (n%48),
3.5 + ((n%15)/10.0)
FROM nums;

