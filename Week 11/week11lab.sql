-- Create index

-- What is an index
-- An index is like a table of contents for a database
-- It helps sql find rows faster while scanning the entire table

-- How to create a basic index?
-- CREATE INDEX -- This tells our database to build our index
-- idx_catagory -- This is the name of our index idx means index and everything after is what the index is being applied to 
-- ON products(catagory) -- We're creating the index on the catagory column in the products table
-- Overall this query builds an index on the category coulumn 
-- SQL will use it automatically when it decides it's faster than a full scan



-- Non Index Scan

-- Analize query performance
-- Use EXPLAIN ANALYZE before and after creating the index 
-- EXPLAIN ANALYZE 
-- SELECT * FROM products
-- WHERE catagory = 'Skincare'; 

-- We use EXPLAIN ANALYZE to see if your index is helping 
-- If we see Seq Scan, SQL is scanning the whole table
-- If we see Index Scan, it's using the index we made to locate matches faster



-- Index scan

-- Forcing SQL to use INDEX SCAN
-- SET enable_seqscan = OFF;
-- EXPLAIN ANALYZE 
-- SELECT * FROM products
-- WHERE catagory = 'Skincare';



-- Index notes

-- Small tables don't benefit from Indexes
-- When the entire table fits into memory, it's faster for SQL to read all rows directly than perform multiple index lookups

-- Indexes have lookup overhead
-- Each index lookup adds extra work, PostgreSQL has to look for the index, then retreieve the rows, then piece tehm back together

-- SQL chooses whatever is faster, this may result in having a SEQ scan rather than an index scan
-- Indexes are extremely useful when databases have thousands or millions of rows



-- Week 10 Lab



-- Part A

-- SELECT COUNT(*) FROM products
-- There are 1000 records within the table
-- The number of records can affect the query performance because it gives more data that must be filtered through taking more time

-- Part B

-- EXPLAIN ANALYZE 
-- SELECT * FROM products
-- WHERE catagory = 'Skincare'; 

-- PostgreSQL used a Seq Scan because I dropped the index before hand so it was forced to
-- There we're 970 records returned 
-- It took a total of 0.143 ms to execute 

-- Part C

-- CREATE INDEX 
-- idx_catagory
-- ON products(catagory)

-- PostgreSQL used a Bitmap Heap Scan for the query
-- The execution time was 0.090 ms so it was indeed faster
-- PostgreSQL might not use an index scan because there is a small number of rows 
-- so it would be faster to just scan the whole thing instead of useing and index

-- Part D

-- SET enable_seqscan = OFF;
-- EXPLAIN ANALYZE 
-- SELECT * FROM products
-- WHERE catagory = 'Skincare';

-- No it did not change the way it scanned because it already used an index scan before and now it used on again
-- PostgreSQL might use a seq scan instead when there aren't many rows that must be searched through 
