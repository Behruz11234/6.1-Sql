-- FRUITS TABLE

CREATE TABLE fruits (
id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
color VARCHAR(50) NOT NULL,
price INT NOT NULL
);

INSERT INTO fruits(name, color, price)
VALUES
('Apple', 'Red', 12000),
('Banana', 'Yellow', 18000),
('Orange', 'Orange', 15000);

-- ADD COLUMN
ALTER TABLE fruits ADD COLUMN country VARCHAR;

-- Nomini o'zgartirish
ALTER TABLE fruits RENAME COLUMN country TO origin_country;

-- O'chirish
ALTER TABLE fruits DROP COLUMN origin_country;

-- get one
SELECT * FROM fruits WHERE name = 'Apple';

-- idni topish
SELECT * FROM fruits WHERE id = 2;

-- update
UPDATE fruits
SET price = 20000, color = 'Green'
WHERE id = 2;

-- delete
DELETE FROM fruits WHERE id = 2;

-- jadval xususiyatlari
\d+ fruits
