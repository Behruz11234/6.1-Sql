-- CARS

CREATE TABLE cars (
id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
brand VARCHAR(100) NOT NULL,
price INT NOT NULL
);

INSERT INTO cars(name, brand, price)
VALUES
('Malibu', 'Chevrolet', 35000),
('Cobalt', 'Chevrolet', 15000),
('Camry', 'Toyota', 30000);

-- ADD COLUMN
ALTER TABLE cars ADD COLUMN color VARCHAR;

-- Nomini o'zgartirish
ALTER TABLE cars RENAME COLUMN color TO car_color;

-- O'chirish
ALTER TABLE cars DROP COLUMN car_color;

-- get one
SELECT * FROM cars WHERE name = 'Malibu';

-- idni topish
SELECT * FROM cars WHERE id = 2;

-- update
UPDATE cars
SET price = 18000, brand = 'GM'
WHERE id = 2;

-- delete
DELETE FROM cars WHERE id = 2;

-- jadval xususiyatlari
\d+ cars
