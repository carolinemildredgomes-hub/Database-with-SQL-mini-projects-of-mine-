# TalentBridge Professional Network

Author: Caroline Mildred Gomes

## Project Overview

TalentBridge is a professional networking platform inspired by modern career-development ecosystems.

The database enables users to build professional profiles, connect with other professionals, showcase education history, and manage employment records.

---

## Business Problem

Professionals often need a centralized platform to:

* Build professional identity
* Maintain career history
* Showcase education
* Expand networks
* Connect with recruiters

TalentBridge solves this through a scalable relational database.

---

## Features

### User Profiles

Stores:

* Names
* Usernames
* Passwords
* Contact Information

### Educational History

Tracks:

* Schools
* Universities
* Degrees
* Enrollment Dates
* Graduation Dates

### Employment History

Tracks:

* Companies
* Job Titles
* Employment Periods

### Professional Connections

Supports:

* Mutual Connections
* Network Expansion
* Relationship Tracking

---

## Database Design

Tables:

1. users
2. schools
3. companies
4. education
5. employment
6. connections

Relationships:

Users
│
├── Education → Schools
│
├── Employment → Companies
│
└── Connections → Users

---

## Skills Demonstrated

* Many-to-Many Relationships
* Junction Tables
* Social Network Modeling
* Data Integrity
* Foreign Keys
* SQL Schema Architecture

---

## Future Improvements

* Job Applications
* Recruiter Accounts
* Skill Endorsements
* Certifications
* Messaging System

---

## Technologies

* SQLite
* SQL
* GitHub

---

## Portfolio Value

Demonstrates the ability to model complex social and professional networking platforms with scalable relational database architecture.

© Caroline Mildred Gomes
