create table if not exists genre (
    id SERIAL primary key,
    name VARCHAR(60) NOT NULL
);

create table if not exists artist (
    id SERIAL primary key,
    name VARCHAR(60) NOT NULL
);

create table if not exists album (
    id SERIAL primary key,
    name VARCHAR(60) NOT null,
    year DATE not NULL
);

create table if not exists track (
    id SERIAL primary key,
    name VARCHAR(60) NOT null,
    duration numeric(3,2) not null
);

create table if not exists collection (
    id SERIAL primary key,
    name VARCHAR(60) NOT null,
    year DATE not NULL
);

create table if not exists ArtistGenre (
    artist_id INTEGER,
    genre_id INTEGER,
    PRIMARY KEY (genre_id, artist_id),
    FOREIGN KEY (genre_id) REFERENCES genre(id),
    FOREIGN KEY (artist_id) REFERENCES artist(id)
);

create table if not exists ArtistAlbum (
    artist_id INTEGER,
    album_id INTEGER,
    PRIMARY KEY (album_id, artist_id),
    FOREIGN KEY (album_id) REFERENCES album(id),
    FOREIGN KEY (artist_id) REFERENCES artist(id)
);

create table if not exists set (
    track_id INTEGER,
    collection_id INTEGER,
    PRIMARY KEY (track_id, collection_id),
    FOREIGN KEY (track_id) REFERENCES track(id),
    FOREIGN KEY (collection_id) REFERENCES collection(id)
);