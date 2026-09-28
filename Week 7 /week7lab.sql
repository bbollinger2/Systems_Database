-- Create a table that stores information about video games
-- CREATE TABLE games (
	-- Automatically generates a unique ID for each game
--     game_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

	-- Stores the name of the game
--     title varchar(100) NOT NULL,

--     -- Stores the genre of the game
--     genre varchar(50),

	-- Stores the price with 2 decimal places
--     price numeric(6,2)
-- );

-- Add three games to the games table
-- INSERT INTO games (title, genre, price)
-- VALUES
--     ('Elden Ring', 'RPG', 59.99),
--     ('Minecraft', 'Sandbox', 29.99),
--     ('Helldivers 2', 'Shooter', 39.99);

-- Create a second table that stores game reviews
-- CREATE TABLE reviews (
	     -- Automatically generates a unique ID for each review
--     review_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

	-- Connects each review to a game in the games table
--     game_id integer REFERENCES games(game_id),
		-- REFRENCES table_name(Column Name)
		-- An FK (Foreign Key) is just a PK(Primary Key) from another table

    -- Stores the review score
--     score integer
-- );
-- Add reviews and connect them to games using game_id
-- INSERT INTO reviews (game_id, score)
-- VALUES
--     (1, 10), -- Elden Ring
--     (2, 9),  -- Minecraft
--     (1, 8);  -- Elden Ring



-- How are tehse 2 table connected?
-- These are connected by games.game_id <---> reviews.game_id

-- Primary Key uniquely identifies a row 
-- A Foreign Key refrenceses a row in another table

-- Think of it as:
-- PK: identifies teh record
-- FK: connects to that record

-- Why do we use JOINS? 
-- A JOIN allows our program to combine related information for us

-- select * from reviews

-- INNER JOIN = Give me rows that have a match in both tables

-- Select the game title from games and the score from reviews
-- SELECT games.title, reviews.score -- tableName.columnName

-- Start with the games table 
-- FROM games 

-- Connect the reviews table to the games table
-- INNER JOIN reviews 

-- Match rows where both tables have the same game_id
-- ON games.game_id = reviews.game_id;

-- This line tells Postgre HOW the 2 tables are related
-- ON games.game_id = reviews.game_id;

-- Postgre Essentally asks:
-- Does this game_id match this game_id



-- LEFT JOIN, keeps everything from the left table
-- select the game titles and its review score
-- SELECT games.title, reviews.score 

-- games is our left table 
-- FROM games

-- keep every game, even if it doesn't have a review
-- LEFT JOIN reviews 

-- match the tables using what is connnecting them?
-- ON games.game_id = reviews.game_id;

-- LEFT JOIN keeps everythiing from the left table

-- INNER JOIN = Only matching rows

-- LEFT JOIN = Everything from the left + matches from teh right



-- Table ALIASES

-- Typing Full table names gets annoying and time consuming 
-- We create aliases for the table names

-- g is now games
-- r is now reviews
-- Select teh title and the review score
-- Select g.title, r,score

-- Give games the alias of g
-- FROM games AS g

-- Give reviews the alias r
-- INNER JOIN reviews as r

-- Connect the tables via PK/FK
-- ON g.game_id = r.game_id

-- to see games that score higher than a 9
-- WHERE r.score >= 9

-- Scores low to high
-- ORDER BY r.score ASC;

-- JOINS don't replace what we've learned, they allow us to use those skills across multiple tables

-- How to create table named students
-- CREATE TABLE students(student_id integer PRIMARY KEY, student_name varchar(100), major text);

-- integer			>
-- numeric(p,s)		>
-- varchar(n)		>
-- text				>
-- date 			>
-- boolean			>

-- How to insert data into table
-- INSERT INTO students (student_id, student_name, major)
-- VALUES(401625, "Sebastian Talamantes", "Networking")

-- Query that selects every column and every row
-- SELECT * FROM students
-- * > pulls everything from said table

-- Only want to see certain columns
-- SELECT student_name, major
-- FROM students;

-- Only want to see students who are in the networking program
-- SELECT student_name, major
-- FROM students
-- WHERE major = "Networking"

-- What if I had 2 conditions that had to be true
-- SELECT student_name, major
-- FROM students
-- WHERE major = "Networking"
-- AND student_id = 401265

-- If we wanted to sort even more
-- use ORDER BY
-- ASC is lowest to highest
-- DESC is high to low

-- FUNCTIONS
-- Perform calculation over multiple rows
-- Count how many students exist
-- SELECT COUNT(*)
-- FROM students; 

-- average tuition cost
-- SELECT AVG(tuition_cost)
-- FROM students;

-- highest tuition cost
-- SELECT MAX(tuition_cost)
-- FROM students

-- COUNT()		> count
-- SUM()		> total
-- AVG()		> average
-- MIN()		> smallest
-- MAX()		> largest



-- How to update/alter table once its been created
-- Change the major of the students with the id of 102 to cyber
-- UPDATE students
-- update changes existing data

-- set the new value
-- SET major = "cyber"

-- only change this specific row
-- WHERE student_id = 102;

-- ALTER TABLE changes teh table itself
-- modify the structure of the student table
-- ALTER TABLE students

-- add a column
-- ADD COLUMN tuition_cost numeric(10,2)



-- NULL means the value is missing or unkown

-- NOT NULL requires a value, add NOT NULL after teh data type (Column data type not null)
-- student_name varchar(100) NOT NULL 

-- SELECT		> what do I want
-- FROM			> where is it coming from
-- WHERE		> which rows do I want
-- GROUP BY		> 
-- ORDER BY 	> 


