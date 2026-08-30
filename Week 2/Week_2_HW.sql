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
