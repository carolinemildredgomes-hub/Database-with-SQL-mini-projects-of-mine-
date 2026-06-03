# Artisan Bakery Operations System

Author: Caroline Mildred Gomes

## Project Overview

Artisan Bakery Operations System is a database designed to support bakery inventory management, menu tracking, customer relationships, and order processing.

The project models real-world bakery operations and demonstrates how relational databases support retail businesses.

---

## Business Problem

Growing bakeries often struggle with:

* Inventory tracking
* Ingredient management
* Customer order history
* Product cost analysis
* Sales reporting

This system centralizes those operations.

---

## Features

### Ingredient Inventory

Tracks:

* Ingredient Name
* Unit Cost
* Supplier Information
* Stock Levels

### Product Catalog

Tracks:

* Bakery Products
* Prices
* Dietary Information
* Ingredients

### Customer Management

Stores:

* Customer Information
* Purchase History
* Order Records

### Order Processing

Tracks:

* Orders
* Product Quantities
* Customer Purchases

---

## Database Design

Tables:

1. ingredients
2. products
3. product_ingredients
4. customers
5. orders
6. order_items

Relationships:

Ingredients
↑
Product_Ingredients
↓
Products

Customers
↓
Orders
↓
Order_Items
↓
Products

---

## Skills Demonstrated

* Inventory Systems
* Order Management
* Many-to-Many Relationships
* Retail Database Design
* Data Normalization
* Foreign Keys

---

## Future Improvements

* Supplier Management
* Delivery Tracking
* Online Ordering
* Sales Analytics Dashboard
* Inventory Forecasting

---

## Technologies

* SQLite
* SQL
* GitHub

---

## Portfolio Value

Demonstrates the ability to design scalable retail and inventory-management systems using industry-standard relational database principles.

© Caroline Mildred Gomes
