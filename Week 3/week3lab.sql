-- Task 1
SELECT *
FROM games;

-- Task 2
SELECT title, platform, rating
FROM games;

-- Task 3
SELECT genre, title, release_year
FROM games;

-- Task 4
SELECT title, rating
FROM games
ORDER BY rating DESC;

-- Task 5
SELECT title, release_year
FROM games
ORDER BY release_year;

-- Task 6
SELECT platform, title, rating
FROM games
ORDER BY platform, rating DESC;

-- Task 7
SELECT DISTINCT platform
FROM games
ORDER BY platform;

-- Task 8
SELECT DISTINCT platform, genre
FROM games

-- Task 9
SELECT title, platform, release_year
FROM games
WHERE platform = 'Switch'

-- Task 10
SELECT title, genre, rating
FROM games
WHERE rating > 9.0

-- Task 11
SELECT title, release_year
FROM games
WHERE release_year < 2020

-- Task 12
SELECT title, rating
FROM games
WHERE rating BETWEEN 8.5 AND 9.2

-- Task 13
SELECT title, genre
FROM games
WHERE title LIKE 'M%';

-- Task 14
SELECT title, genre
FROM games
WHERE title ILIKE '%the%';

-- Task 15
SELECT title, genre
FROM games
WHERE genre ILIKE '%i%';

-- Task 16
SELECT title, platform, rating
FROM games
WHERE platform = 'PC' AND rating > 9.0

-- Task 17
SELECT title, genre
FROM games
WHERE genre = 'RPG' OR genre = 'Fighting'

-- Task 18
SELECT title, platform, release_year 
FROM games
WHERE platform = 'PC' AND (release_year > 2017 OR release_year < 2022)

-- Task 19
SELECT title, genre, platform, rating
FROM games
WHERE rating >= 8.8
ORDER BY platform, rating DESC;

-- Task 20
SELECT title, platform, rating, release_year
FROM games
WHERE platform = 'PC' AND release_year <= 2022
ORDER BY rating DESC;
-- This will search for games on PC and released before or during 2022 and then sorts them by rating from highest to lowest
