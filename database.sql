CREATE TABLE colors (
    id serial PRIMARY key,
    name varchar(30) UNIQUE NOT NULL
);

INSERT INTO colors (name) VALUES ('Black');
INSERT INTO colors (name) VALUES ('White');
INSERT INTO colors (name) VALUES ('Tan');
INSERT INTO colors (name) VALUES ('Blue');
INSERT INTO colors (name) VALUES ('Red');
INSERT INTO colors (name) VALUES ('Green');
INSERT INTO colors (name) VALUES ('Brown');
INSERT INTO colors (name) VALUES ('Silver');
INSERT INTO colors (name) VALUES ('Yellow');
INSERT INTO colors (name) VALUES ('Gray');
INSERT INTO colors (name) VALUES ('Rusty');

SELECT * FROM colors;

CREATE TABLE makes(
    id serial PRIMARY key,
    name varchar(30) UNIQUE NOT NULL,
    is_domestic BOOLEAN DEFAULT FALSE
);


INSERT INTO makes (name, is_domestic) VALUES ('Mazda', false);
INSERT INTO makes (name, is_domestic) VALUES ('Honda', false);
INSERT INTO makes (name, is_domestic) VALUES ('Jeep', true);
INSERT INTO makes (name, is_domestic) VALUES ('Toyota', false);
INSERT INTO makes (name, is_domestic) VALUES ('Subaru', false);
INSERT INTO makes (name, is_domestic) VALUES ('Saab', false);
INSERT INTO makes (name, is_domestic) VALUES ('Chevrolet', true);
INSERT INTO makes (name, is_domestic) VALUES ('Mitsubishi', false);
INSERT INTO makes (name, is_domestic) VALUES ('Cadillac', true);

SELECT * FROM makes;


CREATE TABLE models(
    id serial PRIMARY key,
    name varchar(30) UNIQUE NOT NULL,
    make_id INTEGER REFERENCES makes (id),
    doors INTEGER DEFAULT 4
);

INSERT INTO models (name, make_id, doors) VALUES ('MVP', 1, 4); 
INSERT INTO models (name, make_id, doors) VALUES ('RX-7', 1, 2);
INSERT INTO models (name, make_id, doors) VALUES ('Accord', 2, 4);
INSERT INTO models (name, make_id, doors) VALUES ('Civic', 2, 2);
INSERT INTO models (name, make_id, doors) VALUES ('Cherokee', 3, 4);
INSERT INTO models (name, make_id, doors) VALUES ('Wrangler', 3, 2);
INSERT INTO models (name, make_id, doors) VALUES ('Camry', 4, 4);
INSERT INTO models (name, make_id, doors) VALUES ('Tundra', 4, 2);
INSERT INTO models (name, make_id, doors) VALUES ('WRX', 5, 4);   
INSERT INTO models (name, make_id, doors) VALUES ('Forrester', 5, 4);
INSERT INTO models (name, make_id, doors) VALUES ('95', 6, 4);
INSERT INTO models (name, make_id, doors) VALUES ('93', 6, 2);
INSERT INTO models (name, make_id, doors) VALUES ('Corvette', 7, 2);
INSERT INTO models (name, make_id, doors) VALUES ('Silverado', 7, 2);
INSERT INTO models (name, make_id, doors) VALUES ('Evolution', 8, 4);
INSERT INTO models (name, make_id, doors) VALUES ('Gallant', 8, 4);
INSERT INTO models (name, make_id, doors) VALUES ('DeVille', 9, 4);
INSERT INTO models (name, make_id, doors) VALUES ('Escalade', 9, 4);

SELECT * FROM models;

SELECT models.*, makes.*
FROM models
JOIN makes ON models.make_id = makes.id;


CREATE TABLE inventory(
    id serial PRIMARY key,
    model_id INTEGER REFERENCES models (id),
    YEAR INTEGER,
    color_id INTEGER REFERENCES colors (id),
    mileage INTEGER,
    purchase_price numeric(7, 2),
    sale_price numeric(7,2),
    vin VARCHAR(20),
    history text,
    purchase_date DATE,
    sale_date DATE
);

INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (1, 2000, 1, 10000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (2, 2010, 2, 40000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (3, 2015, 3, 30000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (4, 2013, 4, 20000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (5, 2007, 5, 10000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (6, 2005, 6, 20000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (7, 2012, 7, 30000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (8, 2014, 8, 40000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (9, 2017, 9, 50000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (10, 2015, 10, 60000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (11, 2016, 11, 70000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (12, 2017, 1, 80000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (13, 2000, 2, 90000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (14, 2000, 3, 10000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (15, 2000, 4, 30000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (16, 2000, 5, 20000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (17, 2000, 6, 50000, 1000, 'ABC123', '10/01/2017');
INSERT INTO inventory (model_id, YEAR, color_id, mileage, purchase_price, vin, purchase_date) VALUES (18, 2000, 7, 40000, 1000, 'ABC123', '10/01/2017');

-- Everything
SELECT * FROM inventory;

-- Only blue cards
SELECT * FROM inventory WHERE color_id=4;
SELECT * FROM inventory WHERE color_id=(SELECT id FROM colors WHERE name='Blue');

-- ONLY read cars
SELECT * FROM inventory WHERE color_id=(SELECT id FROM colors WHERE name='Red');

-- Less than 50,000 miles
SELECT * FROM inventory WHERE mileage < 50000;

-- More than 50,000 miles but less than 80,000
SELECT * FROM inventory WHERE mileage > 50000 AND mileage < 80000;

-- Less than 70,000 miles and Green
SELECT * FROM inventory WHERE mileage < 70000 AND color_id = (SELECT id FROM colors WHERE name='Green');

-- Only 2-door cars
SELECT inventory.*, models.*
FROM inventory 
JOIN models ON inventory.model_id = models.id
WHERE models.doors = 2;


-- Full inventory select for project homepage
SELECT i.id, i.year, i.mileage, mo.name AS model, mo.doors, ma.name AS make, c.name AS color
FROM inventory i
JOIN models mo ON i.model_id = mo.id
JOIN makes ma ON mo.make_id = ma.id
JOIN colors c ON i.color_id = c.id;