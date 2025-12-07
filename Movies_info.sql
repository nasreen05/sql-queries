CREATE DATABASE Movies_info;
USE Movies_info;

-- Register table
CREATE TABLE register (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(12) NOT NULL, 
    password CHAR(6) NOT NULL,
    email_id VARCHAR(20) UNIQUE,
    name VARCHAR(17) NOT NULL UNIQUE
);

INSERT INTO register (username, password, email_id, name)
VALUES
('thanu01', 'pass01', 'thanu@gmail.com', 'Thanu'),
('ravi02', 'pass02', 'ravi@gmail.com', 'Ravi'),
('priya03', 'pass03', 'priya@gmail.com', 'Priya');


-- Login table
CREATE TABLE login (
    user_name VARCHAR(17),
    username VARCHAR(12), 
    password CHAR(6),
    FOREIGN KEY (user_name) REFERENCES register(name)
);

INSERT INTO login (user_name, username, password)
VALUES
('Thanu', 'thanu01', 'pass01'),
('Ravi', 'ravi02', 'pass02'),
('Priya', 'priya03', 'pass03');


-- Movie list table
CREATE TABLE movie_list (
    movie_language VARCHAR(15),
    movie_type VARCHAR(12), 
    movie_name VARCHAR(18) PRIMARY KEY
);

INSERT INTO movie_list (movie_language, movie_type, movie_name)
VALUES
('Tamil', 'Action', 'Vikram'),
('Hindi', 'Romance', 'DDLJ'),
('English', 'Sci-Fi', 'Inception');


-- Booking table
CREATE TABLE booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(17),
    mobile CHAR(10) CHECK (CHAR_LENGTH(mobile) = 10),
    movie_name VARCHAR(18),
    price FLOAT CHECK (price >= 0),
    date_time DATETIME DEFAULT '2025-08-25 00:00:00',
    FOREIGN KEY (user_name) REFERENCES register(name),
    FOREIGN KEY (movie_name) REFERENCES movie_list(movie_name)
);

INSERT INTO booking (user_name, mobile, movie_name, price, date_time)
VALUES
('Thanu', '9876543210', 'Vikram', 250, '2025-08-25 18:30:00'),
('Ravi', '9123456789', 'DDLJ', 200, '2025-08-25 20:00:00'),
('Priya', '9988776655', 'Inception', 300, '2025-08-26 19:00:00');


-- Booked table
CREATE TABLE booked (
    booked_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,  -- ✅ now exists so we can reference it
    user_name VARCHAR(17),
    movie_name VARCHAR(18),
    price FLOAT,
    date_time DATETIME DEFAULT '2025-08-25 00:00:00',
    FOREIGN KEY (user_name) REFERENCES register(name),
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id),
    FOREIGN KEY (movie_name) REFERENCES movie_list(movie_name)
);


INSERT INTO booked (user_name, movie_name, price, date_time)
VALUES
('Thanu', 'Vikram', 250, '2025-08-25 18:30:00'),
('Ravi', 'DDLJ', 200, '2025-08-25 20:00:00'),
('Priya', 'Inception', 300, '2025-08-26 19:00:00');


SELECT * FROM register;

SELECT * FROM login;

SELECT * FROM movie_list;

SELECT * FROM booking;

SELECT * FROM booked;
