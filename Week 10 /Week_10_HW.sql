
-- CREATE TABLE products_raw("Index" integer PRIMARY KEY, "Name" text, Description text,
-- Brand text, Catagory text, Price numeric, Currency char(5), Stock numeric,
-- EAN varchar(20), Color varchar(25), "Size" text, Availability text, "Internal ID" numeric);

-- SELECT ROUND(Price) FROM products_raw;

-- SELECT MIN(Price) FROM products_raw;

-- SELECT MAX(Price) FROM products_raw;

-- SELECT FLOOR(Price) FROM products_raw;

-- SELECT UPPER(catagory) FROM products_raw;

-- CREATE VIEW catagory_overview AS
-- SELECT catagory, 
-- ROUND(AVG(price),2) AS avg_price,
-- SUM(stock) AS total_stock
-- FROM products_raw
-- GROUP BY catagory;

-- SELECT * FROM catagory_overview;
