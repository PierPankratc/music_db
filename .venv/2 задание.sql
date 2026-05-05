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

    
CREATE TABLE IF NOT EXISTS songs (
    song_id SERIAL PRIMARY KEY,
    album_id INT REFERENCES album(album_id),
    song_time time not null,
    title varchar(30) not null
);

CREATE TABLE IF NOT EXISTS genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS song_genre (
    song_id INT REFERENCES songs(song_id),
    genre_id INT REFERENCES genre(genre_id),
    PRIMARY KEY (song_id, genre_id)
);

CREATE TABLE IF NOT EXISTS author_genre (
    author_id INT REFERENCES author(author_id),
    genre_id INT REFERENCES genre(genre_id),
     PRIMARY KEY (author_id, genre_id)
);

CREATE TABLE IF NOT EXISTS collection (
    collection_id SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    release_year date NOT NULL
);


CREATE TABLE IF NOT EXISTS collection_song (
    song_id INT REFERENCES songs(song_id),
    collection_id INT REFERENCES collection(collection_id),
    PRIMARY KEY (song_id, collection_id)
);
     
     