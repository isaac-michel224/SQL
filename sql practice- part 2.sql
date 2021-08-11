CREATE TABLE user (

user_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL

);

CREATE TABLE favorite (
    favorite_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    user_id INTEGER NOT NULL,
    artist_id INTEGER, 
    album_id INTEGER,
    song_id INTEGER,
    genre_id INTEGER,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (artist_id) REFERENCES artists (id),
    FOREIGN KEY (album_id) REFERENCES album (id),
    FOREIGN KEY (song_id) REFERENCES genres (id)
);

INSERT INTO user (
    first_name,
    last_name,
    updated_at
)

VALUES (
    'Wesley',
    'Chambers',
    CURRENT_DATE
);


INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES (
    'Michael',
    'Presley',
    CURRENT_DATE,
    CURRENT_DATE
);

INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES (
    'Elvis',
    'Presley',
    CURRENT_DATE,
    CURRENT_DATE
);

SELECT * FROM user;

SELECT * FROM songs; -- here we are selecting everything from songs

SELECT name FROM songs; --here we are selecting only the names from the table songs

SELECT 
id,
name,
created_at
FROM songs;

SELECT * FROM songs WHERE length > '8:00';

SELECT * FROM user WHERE last_name IN ('Jordan', 'Brown', 'Ashley', 'Carnegie');

SELECT * FROM user WHERE first_name = 'Wesley' OR last_name = 'Jordan';


SELECT * FROM user WHERE user_id > 1 OR (updated_at IS NULL AND last_name = 'Chambers');


SELECT * FROM user WHERE first_name LIKE '%ley';

SELECT * FROM user WHERE first_name LIKE 'ley%';

SELECT * FROM user WHERE first_name LIKE '%e%';

SELECT * FROM artists WHERE id BETWEEN 1 and 6;

SELECT * FROM songs WHERE name GLOB 'Man*';
SELECT * FROM songs WHERE name GLOB '??? Learn';
SELECT * FROM songs WHERE name GLOB ' Mary ??? ';
SELECT * FROM songs WHERE name GLOB '??on??';


-- Practice Problem

INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES (
    'Johnny',
    'John',
    CURRENT_TIMESTAMP,
    CURRENT_DATE

), (
    'Thomas',
    'Tank',
    CURRENT_DATE,
    CURRENT_DATE
);

UPDATE artists SET name = 'Janet Jackson' WHERE name LIKE 'janet Jackson';


UPDATE user
SET first_name = 'Wesley A.',
last_name = 'Chambers IV',
updated_at = CURRENT_TIMESTAMP,
created_at = CURRENT_DATE;


BEGIN TRANSACTION; -- helps if you want to avoid making permanent changes to a database 
UPDATE user SET first_name = 'Hey, change me back!';
SELECT * from user;
ROLLBACK; -- reverse transaction that took place above


BEGIN TRANSACTION; 
DELETE FROM songs WHERE id BETWEEN 5 AND 10;
SELECT * FROM songs WHERE id < 11;
ROLLBACK;
