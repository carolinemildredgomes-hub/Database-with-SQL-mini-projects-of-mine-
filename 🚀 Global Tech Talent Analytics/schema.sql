CREATE TABLE companies (
    id INTEGER PRIMARY KEY,
    name TEXT,
    industry TEXT,
    headquarters TEXT
);

CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    company_id INTEGER,
    department_id INTEGER,
    salary INTEGER,
    hire_date DATE,
    country TEXT
);

CREATE TABLE performance_reviews (
    id INTEGER PRIMARY KEY,
    employee_id INTEGER,
    review_year INTEGER,
    performance_score REAL
);
