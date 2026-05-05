CREATE TABLE IF NOT EXISTS author (
    author_id SERIAL PRIMARY KEY,
    Alias varchar(30) not null unique
);

CREATE TABLE IF NOT EXISTS album  (
    album_id SERIAL PRIMARY KEY,
    title varchar(30) not null,
    release_date date not null
);

CREATE TABLE IF NOT EXISTS author_album (
    author_id INT REFERENCES  author(author_id),
    album_id INT REFERENCES  album(album_id),
    PRIMARY KEY (author_id, album_id)
);

CREATE TABLE songs (
    song_id SERIAL PRIMARY KEY,
    album_id INT REFERENCES album(album_id),
    song_time time not null,
    title varchar(30) not null
)
