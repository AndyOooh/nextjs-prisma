--@block
-- Create a DB
CREATE TABLE
    Users (
        id INT PRIMARY KEY AUTO_INCREMENT,
        email VARCHAR(255) NOT NULL,
        bio TEXT,
        country VARCHAR(2)
    );

--@block
-- create a user
INSERT INTO
    Users (email, bio, country)
VALUES
    ('danny@mail.com', 'I am Danny', 'GB');

--@block
-- get all Users
SELECT
    *
FROM
    Users;

--@block
-- complex query
SELECT
    email,
    bio.country
FROM
    Users
WHERE
    country = 'DK';

ORDER BY
    email DESC;

LIMIT
    3;

--@block
-- create index for email
CREATE INDEX email_index ON Users (email);

--@block
-- create Room table woth foreign key
CREATE TABLE
    Room (
        id INT PRIMARY KEY AUTO_INCREMENT,
        street VARCHAR(255),
        owner_id INT,
        FOREIGN KEY (owner_id) REFERENCES Users (id)
    );

--@block
-- create 4 rooms
INSERT INTO
    Room (street, owner_id)
VALUES
    ('Elm street', 1),
    ('Oak street', 2),
    ('Pine street', 3),
    ('Maple street', 2);

--@block	
-- get all rooms
SELECT
    *
FROM
    Room;

--@block
-- get all rooms with owner
SELECT
    *
FROM
    Users
    INNER JOIN Room ON Users.id = Room.owner_id;