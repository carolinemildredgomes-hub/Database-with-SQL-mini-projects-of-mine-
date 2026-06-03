CREATE TABLE passengers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    passport_number TEXT UNIQUE,
    nationality TEXT
);


CREATE TABLE airlines(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    country TEXT,
    terminal TEXT
);


CREATE TABLE flights(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flight_number TEXT NOT NULL,
    airline_id INTEGER NOT NULL,
    departure_airport TEXT,
    arrival_airport TEXT,
    departure_time DATETIME,
    arrival_time DATETIME,
    FOREIGN KEY (airline_id) REFERENCES airlines(id)
);


CREATE TABLE check_ins(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    passenger_id INTEGER NOT NULL,
    flight_id INTEGER NOT NULL,
    check_in_time DATETIME,
    FOREIGN KEY (passenger_id) REFERENCES passengers(id),
    FOREIGN KEY (flight_id) REFERENCES flights(id)
);
