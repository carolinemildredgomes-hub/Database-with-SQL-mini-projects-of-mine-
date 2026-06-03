# SkyLink Airport Management System

Author: Caroline Mildred Gomes

## Project Overview

SkyLink Airport Management System is a relational database designed to manage airport operations, passenger information, airline partnerships, flight scheduling, and check-in records.

The project simulates how a modern international airport organizes daily operations while maintaining data integrity and scalability.

---

## Business Problem

Large airports process thousands of passengers and flights every day.

Managing passenger records manually creates challenges such as:

* Duplicate records
* Flight tracking errors
* Check-in inconsistencies
* Poor scalability

This database solves those problems through a normalized relational design.

---

## Features

### Passenger Management

Stores:

* First Name
* Last Name
* Date of Birth
* Nationality
* Passport Number

### Airline Management

Stores:

* Airline Name
* Country
* Alliance
* Terminal Assignment

### Flight Management

Tracks:

* Flight Number
* Departure Airport
* Arrival Airport
* Departure Time
* Arrival Time
* Flight Status

### Check-In Tracking

Records:

* Passenger
* Flight
* Check-In Time
* Boarding Status

---

## Database Design

Tables:

1. passengers
2. airlines
3. flights
4. check_ins

Relationships:

Airlines
↓
Flights
↓
Check-ins
↑
Passengers

---

## Skills Demonstrated

* Relational Database Design
* SQL Schema Design
* Data Normalization
* Foreign Keys
* Airport Operations Modeling
* One-to-Many Relationships

---

## Future Improvements

* Baggage Tracking
* Gate Assignments
* Boarding Pass Generation
* Flight Delay Management
* Aircraft Tracking

---

## Technologies

* SQLite
* SQL
* GitHub

---

## Portfolio Value

This project demonstrates the ability to model large-scale transportation systems and operational workflows using relational databases.

© Caroline Mildred Gomes
