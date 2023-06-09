-- Название и год выхода альбомов, вышедших в 2018 году.

SELECT title, release_date FROM albums
WHERE CAST(a.release_date AS TEXT) LIKE '2018%';

-- Название и продолжительность самого длительного трека.
SELECT name, duration FROM tracks 
WHERE duration = (SELECT MAX(duration) FROM tracks);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM tracks
WHERE duration > 3.30;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title FROM collections
WHERE CAST(a.release_date AS TEXT) like '2018%' OR CAST(a.release_date AS TEXT) LIKE '2019%' OR CAST(a.release_date AS TEXT) LIKE '2020%';

-- Исполнители, чьё имя состоит из одного слова.
SELECT alias FROM music_artists
WHERE (LENGTH(alias)-LENGTH(REPLACE(alias,' ',''))+1)=1;

-- Название треков, которые содержат слово «мой» или «my».
SELECT name FROM tracks
WHERE name LIKE '%my%' OR name LIKE '%мой%';
