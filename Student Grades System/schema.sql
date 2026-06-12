
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT
);

CREATE TABLE courses (
    id INTEGER PRIMARY KEY,
    course_name TEXT,
    credits INTEGER
);

CREATE TABLE grades (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade TEXT
);
