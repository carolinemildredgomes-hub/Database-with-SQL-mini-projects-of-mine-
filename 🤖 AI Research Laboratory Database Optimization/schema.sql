CREATE TABLE researchers (
    id INTEGER PRIMARY KEY,
    researcher_name TEXT NOT NULL,
    field TEXT,
    join_date DATE
);


CREATE TABLE projects (
    id INTEGER PRIMARY KEY,
    project_title TEXT,
    category TEXT,
    start_year INTEGER
);



CREATE TABLE contributions (
    id INTEGER PRIMARY KEY,
    researcher_id INTEGER,
    project_id INTEGER,
    role TEXT
);


CREATE TABLE papers (
    id INTEGER PRIMARY KEY,
    project_id INTEGER,
    paper_title TEXT,
    publication_year INTEGER
);


CREATE TABLE grants (
    id INTEGER PRIMARY KEY,
    grant_name TEXT,
    amount REAL
);


CREATE TABLE project_grants (
    id INTEGER PRIMARY KEY,
    project_id INTEGER,
    grant_id INTEGER
);




