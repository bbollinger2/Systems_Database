-- Query 1
CREATE DATABASE week5;

-- Query 2
CREATE TABLE products (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name varchar(100),
    quantity integer
);

-- Query 3
INSERT INTO products (product_name, quantity)
VALUES
    ('Gaming Mouse', 10),
    ('Mechanical Keyboard', 8),
    ('Monitor', 5),
    ('Headset', 12);

-- Query 4
ALTER TABLE products
ADD COLUMN description text,
ADD COLUMN price numeric(7,2),
ADD COLUMN rating real,
ADD COLUMN last_updated timestamp WITH time ZONE,
ADD COLUMN in_stock boolean;

-- Query 5
UPDATE products
SET description = 'Wireless gaming mouse',
    price = 49.99,
    rating = 4.7,
    last_updated = now(),
    in_stock = TRUE
WHERE product_name = 'Gaming Mouse';

UPDATE products
SET description = 'RGB Mechanical Keyboard',
    price = 69.99,
    rating = 6.4,
    last_updated = now(),
    in_stock = FALSE
WHERE product_name = 'Mechanical Keyboard';

UPDATE products
SET description = 'HD 24"in LCD Monitor',
    price = 99.99,
    rating = 7.3,
    last_updated = now(),
    in_stock = TRUE
WHERE product_name = 'Monitor';

UPDATE products
SET description = 'High Definition Wireless Headset',
    price = 29.99,
    rating = 8.1,
    last_updated = now(),
    in_stock = FALSE
WHERE product_name = 'Headset';

-- Query 6
UPDATE products
SET price = 24.995
WHERE product_name = 'Headset';

SELECT product_name, price
FROM products;

--It rounded to the nearest decimal point

-- Query 7
SELECT product_name, price, rating
FROM products
WHERE price > 50.00 AND in_stock = TRUE 
ORDER BY price DESC

