CREATE TABLE labels
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title TEXT,
    color TEXT,
);

CREATE TABLE genre
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100)
    FOREIGN KEY(item_id) REFERENCES item_id(id)
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
    genre_id INT REFERENCES genre(id),
)

CREATE TABLE books(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publish_date DATE,
    archived BOOLEAN DEFAULT false,
    publisher TEXT,
    cover_state TEXT,
    author_id INT,
    author_id INT REFERENCES Author(id),
    label_id INT REFERENCES labels(id),
    genre_id INT REFERENCES genre(id),
);

CREATE TABLE music_album
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    publish_date DATE,
    archived BOOLEAN DEFAULT false,
    on_sportify BOOLEAN,
    author_id INT,
    author_id INT REFERENCES Author(id),
    label_id INT REFERENCES labels(id),
    genre_id INT REFERENCES genre(id),
);