-- Query 1
CREATE DATABASE week3_homework;

-- Query 2
CREATE TABLE Transformer_Movies(id bigserial, title varchar(50), release_year date, genre varchar(50), rating numeric(10));

-- Query 3
INSERT INTO Transformer_Movies (title, release_year, genre, rating)
VALUES('Transformers', '2007-07-03', 'Action, Adventure, Science Fiction', 7.1),
('Transformers: Revenge of the Fallen', '2009-06-24', 'Action, Adventure, Science Fiction', 6.0),
('Transformers: Dark of the Moon', '2011-06-29', 'Action, Adventure, Science Fiction', 6.2),
('Transformers: Age of Extinction', '2014-06-27', 'Action, Adventure, Science Fiction', 5.6),
('Transformers: The Last Knight', '2017-06-21', 'Action, Adventure, Science Fiction', 5.2),
('Bumblebee', '2018-12-21', 'Action, Adventure, Science Fiction', 6.7),
('Transformers: Rise of the Beasts', '2023-06-09', 'Action, Adventure, Science Fiction', 6.0),
('Transformers One', '2024-09-20', 'Animated, Action, Adventure, Science Fiction', 7.6);

-- Query 3
SELECT * FROM transformer_movies

-- Query 4
SELECT title, rating 
FROM Transformer_Movies

-- Query 5
SELECT DISTINCT genre
FROM Transformer_Movies

-- Query 6
SELECT title, release_year, rating
FROM Transformer_Movies
WHERE release_year < '2020-01-01'

-- Query 7
SELECT title, release_year, rating
FROM Transformer_Movies
WHERE rating BETWEEN 6 AND 8

-- Query 8
SELECT title, release_year, rating
FROM Transformer_Movies
WHERE rating BETWEEN 6 AND 8
ORDER BY rating DESC;

-- =============================================
-- Chapter 4 Quick Skim
-- =============================================

-- New Concept:
-- I learned that you can use the COPY command to copy all the data in a table to a text file.

-- Question:
-- I am still wondering how many different data types are there in sql?


