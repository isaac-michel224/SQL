--homework

SELECT * FROM songs;
SELECT id, FROM genres;

SELECT * FROM songs;

SELECT * FROM songs WHERE (id % 2) = 0;
SELECT * FROM songs WHERE (id % 2) = 0 AND id > 50;

--3
SELECT * FROM songs WHERE (id % 2) = 0 AND id > 50
OR (id % 2) !=0 AND id < 10;
-- finished question 3;

--4 
INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),

INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),

INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),
INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),
INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),
INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),
INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),

INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),
INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),

INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
),

INSERT INTO user (
    first_name,
    last_name,
    created_at,
    updated_at
)

VALUES 
(
    'Dave',
    'Chappelle',
    CURRENT_TIMESTAMP,
    CURRENT_DATE
); 

SELECT * FROM user;

--5
UPDATE user
SET last_name = 'Jackson',
    updated_at = CURRENT_TIMESTAMP
WHERE user_id = 2;

SELECT * FROM user;


-- 6
BEGIN TRANSACTION;

    DELETE FROM user;
    SELECT * FROM user;

 ROLLBACK;

--- 7 
INSERT INTO favorite (user_id, created_at)
SELECT user_id, created_at
FROM user;

 SELECT * FROM favorite;

 --8
 BEGIN TRANSACTION;
 DELETE FROM favorite WHERE (favorite_ad % 2) !=0
 OR (favorite_id % 2) = 0 AND favorite_id > 10;
ROLLBACK;

--9
 SELECT * FROM favorite;
 