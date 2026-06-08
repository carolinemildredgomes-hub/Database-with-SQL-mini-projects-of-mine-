CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE patients (
    id INTEGER PRIMARY KEY,
    patient_name TEXT NOT NULL,
    gender TEXT,
    age INTEGER,
    district TEXT
);

CREATE TABLE admissions (
    id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    department_id INTEGER,
    admission_date DATE,
    diagnosis TEXT,
    FOREIGN KEY(patient_id) REFERENCES patients(id),
    FOREIGN KEY(department_id) REFERENCES departments(id)
);
