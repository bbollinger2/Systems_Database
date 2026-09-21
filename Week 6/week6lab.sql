-- CREATE DATABASE week6;

-- CREATE TABLE products_raw(
-- id integer PRIMARY KEY,
-- product_name varchar(20),
-- brand varchar(20),
-- catagory text, 
-- price numeric(10,2),
-- stock integer);



-- two ways to import csv files


-- 1st Option is with SQL

-- COPY products_raw FROM '"C:\Users\399632\Downloads\products_raw.csv"' DELIMITER ',' CSV HEADER;

-- COPY products_raw FROM '"C:\Users\399632\Downloads\products_raw.csv"' WITH (format CSV , HEADER);


-- 2nd Option is to use the GUI 

-- Go to your table with matching columns and select import/export then input the relevant data 

-- Confirm file name, delimiter, header is on



-- Basic Arithmatic in Queries

-- SELECT price, stock, price*stock AS inventory_value 
-- FROM products_raw LIMIT 5;

-- SELECT price + 5 AS Price_Increase 
-- FROM products_raw LIMIT 5;



-- Built in fuctions that postgre has

-- SELECT SUM(price * stock) AS total_inventory_value
-- FROM products_raw

-- AVG average product price

-- SELECT AVG(price) AS Average_price
-- FROM products_raw

-- Finding the highest and lowest value, we will use MIN and MAX

-- SELECT MIN(price), MAX(price)
-- FROM products_raw

--How many products within a dataset

-- SELECT COUNT(*)
-- FROM products_raw

-- Filtering with math

-- SELECT * FROM products_raw
-- WHERE price > 500;

-- Catagories with total stock greater than 5

-- SELECT catagory, SUM(stock) 
-- FROM products_raw
-- GROUP BY catagory 
-- HAVING SUM(stock) > 5;
