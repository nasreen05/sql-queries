create database station;

CREATE TABLE station_info (
    id INT PRIMARY KEY,
    station_name VARCHAR(50),
    city VARCHAR(50),
    platforms INT,
    station_code VARCHAR(50)
);

INSERT INTO station_info VALUES
(101, 'Central Station', 'Mumbai', 7, 'MUMC'),
(102, 'South Station', 'Delhi', 5, 'DELS'),
(103, 'West Station', 'Pune', 4, 'PUNW');

INSERT INTO station_info(id,station_name,city) VALUES
(106, "Kolkata Station", "Kolkata");

UPDATE station_info
SET platforms = 6
WHERE id = 103;

