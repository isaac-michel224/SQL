SELECT 
album_id,
sum(length) AS MINUTES
FROM songs GROUP BY album_id;

SELECT albums.id, albums.name, SUM(songs.length) AS MINUTES
FROM songs
INNER JOIN albums ON songs.album_id = albums.id
GROUP BY albums.id;

SELECT
albums.name,
songs.name,
songs.length AS MINUTES
FROM albums
LEFT JOIN songs ON albums.id = songs.album_id
ORDER BY albums.name, Minutes;

