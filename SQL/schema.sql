CREATE TABLE labels
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title TEXT,
    color TEXT,
);

CREATE TABLE books
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publish_date DATE,
    archived BOOLEAN DEFAULT false,
    publisher TEXT,
    cover_state TEXT,
    author_id INT,
    label_id INT REFERENCES labels(id),
    genre_id INT,
    source_id INT
);
