
-- UPDATE the favorite table (don't forget to set UpdatedAt to CURRENT_TIMESTAMP!) so that every record but two have a favorite song (SongID), genre (GenreID), artist (ArtistID), and album (AlbumID).
-- Starting from the User table, get the name of every User and that user's favorite song, genre, artist, and album. This will involve some JOINs!
-- Starting from the albums table, SELECT every album name and its respective ID that are longer than 5 minutes (this will involve a JOIN).



CREATE TABLE favorite(
  id int,
 artist varchar(255),
 album varchar(255),
 song Varchar(255),
 genre Varchar(255)
  );

  INSERT INTO favorite (id, artist, album, song, genre)
VALUES (1, 'The Weeknd', 'After Hours', 'Blinding Lights', 'Pop'),
(2, 'Stormzy', 'Heavy is the Head', 'Wiley Flow', 'Grime'),
(3, 'Headie One', 'Edna', 'Only You Freestyle', 'Drill'),
(4, 'Dave', 'Psychodrama', 'Screwface Capital', 'Hip-hop'),
(5, 'Bad Bunny', 'YHLQMDLG', 'Yo Perreo Sola', 'Reggaeton'), 
 (6, 'Jessie Reyez', 'Before Love Came to Kill Us', 'La Memoria', 'Latin R&B'), 
(7, 'The Roots', 'Phrenology', 'Break You Off', 'Hip-Hop/R&B'), 
(8, 'Jay-Z', 'The Black Album', 'Threat', 'Rap'), 
 (9, 'Eminem', 'The Marshall Mathers LP 2', 'Evil Twin', 'Rap'), 
(10, 'Beyonce', 'Lemonade', 'Daddy Lessons', 'Country'), 
(11, 'Kendrick Lamar', 'To Pimp a Butterfly', 'Alright', 'Rap'); 

--Question 1;

ALTER TABLE favorite
ADD updated_at;

UPDATE favorite
SET updated_at = CURRENT_TIMESTAMP;

BEGIN TRANSACTION;

UPDATE favorite
SET artist = 'NULL',
      album = 'NULL',
      song = 'NULL',
      genre = 'NULL'
  WHERE id = 10;

  UPDATE favorite
SET artist = 'NULL',
      album = 'NULL',
      song = 'NULL',
      genre = 'NULL'
  WHERE id = 11;

SELECT * FROM favorite;
  ROLLBACK;

SELECT * FROM favorite;
--Question 2;

DELETE FROM favorite
WHERE id >=10;
SELECT * FROM favorite;

CREATE TABLE user 
(
  id int,
  listener varchar(255)
);

ALTER TABLE USER
ADD COLUMN fav varchar(255);


INSERT INTO user (id, listener, fav)
VALUES
(1, "Pearson", "Eminem"),
(2, "Sally", "The Weeknd"),
(3, "Andrew", "Jay-Z"),
(4, "James", "Jessie Reyez"),
(5, "Matt", "Dave"),
(6, "Baudelaire", "The Roots"),
(7, "Jones", "Headie One"),
(8, "Ham", "Bad Bunny"),
(9, "Abel", "Stormzy");

SELECT * from user;


SELECT user.id, favorite.artist
FROM user
INNER JOIN favorite
ON user.fav = favorite.artist;


--Question 3;
SELECT albums.name AS Album, albums.id AS Album_ID, SUM(songs.length) AS Minutes FROM albums
INNER JOIN songs ON albums.id=songs.album_id
GROUP BY albums.id 
HAVING SUM(songs.length)>10;



