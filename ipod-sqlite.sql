SELECT * FROM albums;
SELECT * FROM artists;
SELECT * FROM genres;
SELECT * FROM songs;

CREATE TABLE fruits (id INTEGER PRIMARY KEY AUTOINCREMENT, NAME VARCHAR(20));

INSERT INTO fruits 
(name)

VALUES
('orange'),
('apple'),
('pear'),
('durian');

DELETE FROM fruits WHERE id = 3;

INSERT INTO fruits (name)
VALUES
('nectarine');

