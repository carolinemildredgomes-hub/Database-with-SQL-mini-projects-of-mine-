DROP TABLE IF EXISTS publications;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS researchers;


CREATE TABLE IF NOT EXISTS researchers (
    id INTEGER PRIMARY KEY,
    researcher_name TEXT,
    specialization TEXT
);

CREATE TABLE IF NOT EXISTS projects (
    id INTEGER PRIMARY KEY,
    project_title TEXT,
    category TEXT,
    researcher_id INTEGER,
    FOREIGN KEY(researcher_id) REFERENCES researchers(id)
);

CREATE TABLE IF NOT EXISTS publications (
    id INTEGER PRIMARY KEY,
    project_id INTEGER,
    publication_date DATE,
    citations INTEGER,
    FOREIGN KEY(project_id) REFERENCES projects(id)
);
