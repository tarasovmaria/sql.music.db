CREATE TABLE IF NOT EXISTS genre (
    genre_id serial PRIMARY KEY,
    name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS music_artists (
    artist_id serial PRIMARY KEY,
    alias varchar(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_genres (
    id serial PRIMARY KEY,
    artist_id integer references music_artists(artist_id),
    genre_id integer references genre(genre_id)
);

CREATE TABLE IF NOT EXISTS albums (
    album_id serial PRIMARY KEY,
    title varchar(60) NOT NULL,
    release_date date NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_album (
    id serial PRIMARY KEY,
    artist_id integer references music_artists(artist_id),
    album_id integer references albums(album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
    track_id serial PRIMARY KEY,
    name varchar(60) NOT NULL,
    duration numeric NOT NULL,
    album_id integer references albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections (
    collection_id serial PRIMARY KEY,
    title varchar(60) NOT NULL,
    release_date date NOT NULL
);


CREATE TABLE IF NOT EXISTS tarcks_collections (
    id serial PRIMARY KEY,
    track_id integer references tracks(track_id),
    collection_id integer references collections(collection_id)
);