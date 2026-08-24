--Query 1
CREATE DATABASE week_2_lab;

--Query 2
CREATE TABLE Animal_Types(id numeric(25), species varchar(25), habitat varchar(50), diet varchar(50))

--Query 3
CREATE TABLE Animals(id numeric(25), name varchar(50), species_id numeric(25), age numeric(10))

--Query 4
INSERT INTO Animal_Types(id, species, habitat, diet)

VALUES (1, 'lion', 'sahara', 'gazelle'), (2, 'giraffe', 'sahara', 'leaves'), (3, 'penguin', 'arctic', 'fish')

--Query 5
INSERT INTO Animals(id, name, species_id, age)

VALUES (1, 'Alex', 1, 3), (2, 'Melman', 2, 18), (3, 'Skipper', 3, 78)
