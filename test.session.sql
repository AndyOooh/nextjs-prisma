

--@block
-- Create a DB
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    bio TEXT,
    country VARCHAR(2)
);

--@block
-- create a user
INSERT INTO Users(email, bio, country) 
VALUES('tom@mail.com', 'I am Tom', 'DK');

--@block
-- get all Users
SELECT * FROM Users;

--@block
-- complex query
SELECT email, bio. country FROM Users
WHERE country = 'DK';
ORDER BY email DESC;
LIMIT 3;

--@block
-- create index for email
CREATE INDEX email_index ON Users(email);



