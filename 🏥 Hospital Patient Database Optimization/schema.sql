CREATE TABLE patients (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    phone TEXT,
    registration_date DATE
);

CREATE TABLE doctors (
    id INTEGER PRIMARY KEY,
    doctor_name TEXT,
    specialization TEXT
);


CREATE TABLE appointments (
    id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    doctor_id INTEGER,
    appointment_date DATE,
    status TEXT
);

CREATE TABLE prescriptions (
    id INTEGER PRIMARY KEY,
    appointment_id INTEGER,
    medicine TEXT
);


CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT
);
