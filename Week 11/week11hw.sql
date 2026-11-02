-- CREATE TABLE products_big("Index" numeric, "Name" text, "Description" text, 
-- Brand text, Category text, Price numeric, Currency text, Stock numeric, EAN text,
-- Color text, "Size" text, Availability text, "Internal ID" numeric)

-- SELECT COUNT(*) FROM products_big -- expect ~100,000
-- SELECT * FROM products_big LIMIT 5; -- spot-check columns

-- EXPLAIN ANALYZE SELECT * FROM products_big WHERE category = 'Skincare';

-- CREATE INDEX
-- idx_category
-- ON products_big(category)

-- EXPLAIN ANALYZE SELECT * FROM products_big WHERE category = 'Skincare';



-- Short Reflection



-- What changed between the “no index” and “with index” plans?

-- The search was a lot faster because it already new where to look


-- When did PostgreSQL choose an index?

-- Once you run the scan PostgreSQL will auto use it if needed


-- How did the larger table size affect the optimizer compared to your smaller tables?

-- There were more lines to search through so there was a greater speed difference
