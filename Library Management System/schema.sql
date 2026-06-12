
CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    year INTEGER
);

CREATE TABLE members (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
);

CREATE TABLE borrow_records (
    id INTEGER PRIMARY KEY,
    book_id INTEGER,
    member_id INTEGER,
    borrow_date TEXT,
    return_date TEXT
);
