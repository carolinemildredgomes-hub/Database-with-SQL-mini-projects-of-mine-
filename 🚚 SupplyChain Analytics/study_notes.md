# 📚 SupplyChain Analytics - Study Notes

---

# 🎯 Project Goal

This project simulates real-world logistics and supply chain analytics using SQL.

The database helps answer business questions such as:

* Which warehouses generate the most revenue?
* Which drivers perform best?
* Which shipments are most profitable?
* Which customers receive deliveries fastest?
* Which locations experience the most delays?

---

# 🗄 Database Structure

## drivers

Stores information about delivery drivers.

| Column     | Description               |
| ---------- | ------------------------- |
| id         | Unique driver ID          |
| first_name | Driver first name         |
| last_name  | Driver last name          |
| hire_date  | Hiring date               |
| rating     | Driver performance rating |

---

## warehouses

Stores warehouse information.

| Column         | Description    |
| -------------- | -------------- |
| id             | Warehouse ID   |
| warehouse_name | Warehouse name |
| city           | City           |
| country        | Country        |

---

## customers

Stores customer information.

| Column        | Description   |
| ------------- | ------------- |
| id            | Customer ID   |
| customer_name | Company name  |
| country       | Country       |
| industry      | Industry type |

---

## shipments

Stores shipment information.

| Column        | Description                 |
| ------------- | --------------------------- |
| id            | Shipment ID                 |
| warehouse_id  | Warehouse handling shipment |
| driver_id     | Driver assigned             |
| shipment_date | Shipment date               |
| delivery_date | Delivery date               |
| status        | Delivered or Delayed        |
| weight_kg     | Shipment weight             |
| cost          | Shipping cost               |
| revenue       | Revenue generated           |

---

## deliveries

Stores delivery performance.

| Column              | Description           |
| ------------------- | --------------------- |
| id                  | Delivery ID           |
| shipment_id         | Shipment reference    |
| customer_id         | Customer reference    |
| delivery_time_hours | Delivery duration     |
| customer_rating     | Customer satisfaction |

---

# 🔗 Relationships

Warehouse → Shipments

Driver → Shipments

Shipment → Deliveries

Customer → Deliveries

---

# 📖 SQL Concepts Used

---

## SELECT

Used to retrieve data.

Example:

```sql
SELECT *
FROM drivers;
```

---

## WHERE

Filters rows.

Example:

```sql
SELECT *
FROM shipments
WHERE status = 'Delayed';
```

---

## ORDER BY

Sorts results.

Example:

```sql
SELECT *
FROM shipments
ORDER BY revenue DESC;
```

---

## LIMIT

Restricts result count.

Example:

```sql
SELECT *
FROM shipments
LIMIT 10;
```

---

## COUNT()

Counts rows.

Example:

```sql
SELECT COUNT(*)
FROM shipments;
```

---

## SUM()

Calculates totals.

Example:

```sql
SELECT SUM(revenue)
FROM shipments;
```

Business Use:

Total company revenue.

---

## AVG()

Calculates averages.

Example:

```sql
SELECT AVG(cost)
FROM shipments;
```

Business Use:

Average shipment cost.

---

## MAX()

Finds largest value.

Example:

```sql
SELECT MAX(revenue)
FROM shipments;
```

Business Use:

Highest earning shipment.

---

## MIN()

Finds smallest value.

Example:

```sql
SELECT MIN(cost)
FROM shipments;
```

Business Use:

Cheapest shipment.

---

## GROUP BY

Creates groups for analysis.

Example:

```sql
SELECT warehouse_id,
       SUM(revenue)
FROM shipments
GROUP BY warehouse_id;
```

Business Use:

Revenue by warehouse.

---

## HAVING

Filters grouped data.

Example:

```sql
SELECT warehouse_id,
       COUNT(*)
FROM shipments
GROUP BY warehouse_id
HAVING COUNT(*) > 50;
```

Business Use:

Warehouses handling large shipment volumes.

---

## INNER JOIN

Combines related tables.

Example:

```sql
SELECT warehouse_name,
       revenue
FROM warehouses
JOIN shipments
ON warehouses.id = shipments.warehouse_id;
```

Business Use:

Most important SQL skill for analysts.

---

## Subqueries

Query inside another query.

Example:

```sql
SELECT *
FROM drivers
WHERE rating =
(
SELECT MAX(rating)
FROM drivers
);
```

Business Use:

Find top-performing drivers.

---

# 📊 Query Learning Map

| File   | Concept            |
| ------ | ------------------ |
| 1.sql  | AVG                |
| 2.sql  | WHERE              |
| 3.sql  | JOIN               |
| 4.sql  | ORDER BY, LIMIT    |
| 5.sql  | DISTINCT           |
| 6.sql  | SUM, GROUP BY      |
| 7.sql  | MAX, Subquery      |
| 8.sql  | Calculated Columns |
| 9.sql  | AVG, GROUP BY      |
| 10.sql | Multi-table JOIN   |
| 11.sql | Profit Analysis    |
| 12.sql | Advanced Analytics |

---

# 💼 Real-World Skills Demonstrated

* SQL Query Writing
* Data Analysis
* Business Intelligence
* Supply Chain Analytics
* Logistics Reporting
* KPI Measurement
* Revenue Analysis
* Operational Analytics
* Relational Database Design

---

# 🚀 Portfolio Impact

This project demonstrates practical SQL skills used by:

* Data Analysts
* Business Analysts
* Operations Analysts
* Supply Chain Analysts
* Logistics Managers
* Business Intelligence Analysts

Unlike simple tutorial databases, this project simulates a realistic business environment with warehouses, shipments, customers, and revenue analytics.

---

# 👩‍💻 Author

Caroline Mildred Gomes


