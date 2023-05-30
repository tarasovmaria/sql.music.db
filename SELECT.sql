--Количество исполнителей в каждом жанре.
SELECT g.name, COUNT(ma.alias)
FROM genre g
LEFT JOIN artists_genres ag ON g.genre_id = ag.genre_id
LEFT JOIN music_artists ma ON ag.artist_id = ma.artists_id
GROUP BY g.name
ORDER BY COUNT(ma.artists_id) DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT t.name, a.release_date
FROM albums a
LEFT JOIN tracks t ON t.album_id = a.album_id
WHERE CAST(a.release_date AS TEXT) LIKE '2019%' OR CAST(a.release_date AS TEXT) LIKE '2020%';

--Средняя продолжительность треков по каждому альбому.
SELECT a.title, AVG(t.duration)
FROM albums a  
LEFT JOIN tracks t on t.album_id = a.album_id
GROUP BY a.title 
ORDER BY AVG(t.duration);

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT ma.alias
FROM music_artists ma 
WHERE  ma.alias not in (
    SELECT DISTINCT  ma.alias
    FROM music_artists ma
    LEFT JOIN artists_album aa ON ma.artists_id = aa.artist_id
    LEFT JOIN albums a ON a.album_id = aa.album_id
    WHERE  CAST(a.release_date AS TEXT) LIKE '2020%'
)
ORDER BY ma.alias;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT  DISTINCT c.title 
FROM collections c 
LEFT JOIN tracks_collection tc ON c.collection_id = tc.collection_id 
LEFT JOIN tracks t ON t.track_id = tc.track_id 
LEFT JOIN albums a ON a.album_id = t.album_id 
LEFT JOIN artists_album aa ON aa.album_id = a.album_id 
LEFT JOIN music_artists ma ON ma.artists_id = aa.artist_id 
WHERE ma.alias LIKE '%Tame Impala%'
ORDER BY c.title;

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.title
FROM albums a 
LEFT JOIN artists_album aa ON a.album_id = aa.album_id 
LEFT JOIN music_artists ma ON ma.artists_id = aa.artist_id 
LEFT JOIN artists_genres ag ON ma.artists_id = ag.artist_id 
LEFT JOIN genre g ON g.genre_id = ag.genre_id 
GROUP BY a.title 
HAVING count(DISTINCT g."name") > 1
ORDER BY a.title;

--Наименования треков, которые не входят в сборники.
SELECT t.name
FROM tracks t 
LEFT JOIN tracks_collection tc ON t.track_id = tc.track_id 
WHERE tc.track_id IS NULL;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT ma.alias, t.duration
FROM tracks t 
LEFT JOIN albums a ON a.album_id = t.album_id 
LEFT JOIN artists_album aa ON aa.album_id = a.album_id 
LEFT JOIN music_artists ma ON ma.artists_id = aa.artist_id 
GROUP BY ma.alias, t.duration 
HAVING t.duration = (SELECT MIN(duration) FROM tracks)
ORDER BY t.duration;

--Названия альбомов, содержащих наименьшее количество треков.
SELECT DISTINCT a.title
FROM albums a 
LEFT JOIN tracks t ON t.album_id = a.album_id 
WHERE t.album_id IN (
	SELECT album_id 
	FROM tracks
	GROUP BY album_id 
	HAVING COUNT(track_id) = (
		SELECT count(track_id)
		FROM tracks
		GROUP BY album_id 
		ORDER BY count(*)
		LIMIT 1
		)
)
ORDER BY a.title;
