CREATE DATABASE musiclibrary;

USE musiclibrary;

CREATE TABLE artists (
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE albums (
id INT AUTO_INCREMENT PRIMARY KEY,
album_name VARCHAR(100) NOT NULL
);

CREATE TABLE genre (
id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(75) NOT NULL
);

ALTER TABLE albums 
ADD (album_artist INT, FOREIGN KEY (album_artist) REFERENCES artists(id));

ALTER TABLE albums
ADD (album_genre INT, FOREIGN KEY (album_genre) REFERENCES genre(id));

ALTER TABLE albums
ADD (release_year INT, total_tracks INT);

ALTER TABLE albums
ADD (album_duration INT);



