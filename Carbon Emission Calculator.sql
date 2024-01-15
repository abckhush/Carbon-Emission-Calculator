-- CREATING A TABLE
CREATE TABLE emission(
    id INT PRIMARY KEY,
    emission_source VARCHAR(100),
    emission_value INT,
    emission_date DATE
);

-- INSERTING VALUES
INSERT INTO emission(id,emission_source, emission_value, emission_date)
VALUES (10, "Bike", 33, '2023-01-01');
INSERT INTO emission(id,emission_source, emission_value, emission_date)
VALUES (20, "Car", 38, '2023-01-02');
INSERT INTO emission(id,emission_source, emission_value, emission_date)
VALUES (30, "Taxi", 40, '2023-04-01');
INSERT INTO emission(id,emission_source, emission_value, emission_date)
VALUES (40, "Truck", 55, '2023-05-01');
INSERT INTO emission(id,emission_source, emission_value, emission_date)
VALUES (50, "Car", 40, '2023-07-01');

-- SQL QUERY
SELECT SUM(emission_value) AS total_emission
FROM emission
WHERE DATE(emission_date) BETWEEN '2023-01-01' AND '2023-12-31';

SELECT emission_source, SUM(emission_value) AS total_emission
FROM emission
WHERE DATE(emission_date) BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY emission_source;