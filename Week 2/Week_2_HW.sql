--Query 1
CREATE DATABASE PracticeDB

--Query 2
CREATE TABLE Top_Albums(title varchar(25), author varchar(50), sales numeric(10), release_year date)

--Query 3
INSERT INTO Top_Albums(title, author, sales, release_year)
VALUES ('Thriller', 'Michael Jackson', 70000000, '1982 09 30'),
('Back in Black', 'AC/DC', 50000000, '1980 7 25'),
('The Bodyguard', 'Whitney Houston', 45000000, '1992 11 17');

--Query 4
INSERT INTO Top_Albums(title, author, sales, release_year)
VALUES ('Thriller', 'Michael Jackson', 70000000, '1982 09 30'),
('Back in Black', 'AC/DC', 50000000, '1980 7 25')
('The Bodyguard', 'Whitney Houston', 45000000, '1992 11 17');

--Error Message
ERROR:  syntax error at or near "("
LINE 4: ('The Bodyguard', 'Whitney Houston', 45000000, '1992 11 17')...
        ^ 

SQL state: 42601
Character: 174

--Notes
--1. I noticed a new concept called DISTINCT this command is how you seaarch for unique values such as misspelled words or one off inputs this is usefull in finding typoes or other mistakes.

--2. The question I have is when dealling with large amounts of data it's best practice to use a unique id number, but when dealing with colosal amounts of data should you separtae the id numbers like 1-2 milllion are 
--one thing while 3-4 million are another just so the data can be processes faster or since its numbers does it not matter?
