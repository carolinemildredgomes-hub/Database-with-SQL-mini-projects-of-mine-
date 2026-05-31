CREATE TABLE drivers (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    hire_date DATE,
    rating REAL
);

CREATE TABLE warehouses (
    id INTEGER PRIMARY KEY,
    warehouse_name TEXT,
    city TEXT,
    country TEXT
);

CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    customer_name TEXT,
    country TEXT,
    industry TEXT
);

CREATE TABLE shipments (
    id INTEGER PRIMARY KEY,
    warehouse_id INTEGER,
    driver_id INTEGER,
    shipment_date DATE,
    delivery_date DATE,
    status TEXT,
    weight_kg REAL,
    cost REAL,
    revenue REAL
);

CREATE TABLE deliveries (
    id INTEGER PRIMARY KEY,
    shipment_id INTEGER,
    customer_id INTEGER,
    delivery_time_hours REAL,
    customer_rating REAL
);
