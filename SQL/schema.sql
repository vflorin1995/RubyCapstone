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

CREATE TABLE Author(
    id INT CONSTRAINT ID_Author_PK PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40)
);

CREATE TABLE Game(
    id INT CONSTRAINT ID_Games_PK PRIMARY KEY,
    multiplayer VARCHAR(40),
    last_played_at DATE,
    publish_date DATE,
    archived BOOLEAN,
    author_id INT REFERENCES Author(id),
    label_id INT REFERENCES labels(id),
    genre_id INT,
    source_id INT
)