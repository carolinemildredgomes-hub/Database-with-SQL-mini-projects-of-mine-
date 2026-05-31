CREATE TABLE majors(id INTEGER PRIMARY KEY, major_name TEXT);
CREATE TABLE students(id INTEGER PRIMARY KEY, name TEXT, email TEXT, major_id INTEGER);
CREATE TABLE scholarships(id INTEGER PRIMARY KEY, scholarship_name TEXT, amount INTEGER);
CREATE TABLE awards(id INTEGER PRIMARY KEY, student_id INTEGER, scholarship_id INTEGER, date_awarded TEXT);
CREATE TABLE payments(id INTEGER PRIMARY KEY, student_id INTEGER, amount INTEGER, payment_date TEXT);
