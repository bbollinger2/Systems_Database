-- CREATE DATABASE week_5



-- Create a table

-- CREATE TABLE games(
-- id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- game_name varchar(50),
-- release_date date,
-- rating real
-- )

-- INSERT INTO games (game_name, release_date, rating)
-- VALUES 
-- ('Minecraft', '2011-11-18', 9.0),
-- ('Grand Theft Auto V', '2013-9-17', 9.4),
-- ('Fortnite', '2017-7-25', 8.6),
-- ('Red Dead Redemption 2', '2018-10-26', 9.8),
-- ('The Elder Scrolls V: Skyrim', '2011-11-11', 9.4);



-- Add new data types

-- ALTER TABLE games
-- ADD COLUMN description text,
-- ADD COLUMN price double precision,
-- ADD COLUMN multiplayer boolean,
-- ADD COLUMN downloads numeric(7,2);



-- Update the Records 

-- UPDATE games
-- SET multiplayer = TRUE
-- WHERE game_name = 'Minecraft';

-- UPDATE games
-- SET description = 'A sandbox game where players explore a blocky, procedurally generated 3D world to extract raw materials, craft tools, and build structures or automated machinery.'
-- WHERE game_name = 'Minecraft';

-- UPDATE games
-- SET price = 29.99
-- WHERE game_name = 'Minecraft';



-- Rename something

-- ALTER TABLE games 
-- RENAME COLUMN downloads TO copies_sold



-- 5 Queries

-- SELECT * FROM public.games
-- ORDER BY id ASC 

-- SELECT game_name, rating
-- FROM games
-- WHERE rating > 9.0
-- ORDER BY rating DESC;

-- SELECT game_name, multiplayer
-- FROM games
-- WHERE multiplayer = TRUE
-- ORDER BY id ASC 

-- SELECT game_name, price 
-- FROM games
-- WHERE price < 50.00

-- SELECT game_name, release_date
-- FROM games 
-- WHERE release_date > '2015-01-01'



-- Quick Skim and Questions

-- Which new data type did you find the most useful?

-- I found real to be the most useful new data type.

-- Why did you choose the data types you used?

-- Because they were the most apropriate choices for the type of data that I needed.

-- What is the difference between ALTER TABLE and UPDATE?

-- ALTER TABLE will make changes to the structure of the table such as columns while UPDATE makes changes to the data in the table such as rows.
