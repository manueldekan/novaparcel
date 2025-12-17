-- ====================================
-- NovaParcel Database
-- ====================================

CREATE TABLE vehicle_type (
    id INT PRIMARY KEY,
    name VARCHAR
);

INSERT INTO vehicle_type VALUES
    (1000, 'Speeder Pod'),          
    (1001, 'Starliner Express'),    
    (1002, 'Cargo Freighter'),      
    (1003, 'Multi-Pack Shuttle'),   
    (1004, 'Drone'),                
    (1005, 'Galactic Hauler');      


CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR,
    email VARCHAR,
    country_id INT,
    premium_customer VARCHAR
);

INSERT INTO customer VALUES
    (1000, 'Luke Skywalker', 'luke@rebellion.com', 1000, 'yes'),
    (1001, 'Spock', 'spock@vulcan.edu', 1001, 'yes'),
    (1002, 'Ellen Ripley', 'ripley@nostromo.com', 1002, 'no'),
    (1003, 'Han Solo', 'han@falcon.space', 1003, 'yes'),
    (1004, 'Kal-El', 'superman@krypton.org', 1004, 'no'),
    (1005, 'Doctor Who', 'tardis@time.gov', 1005, 'yes');

CREATE TABLE planet (
    id INT PRIMARY KEY,
    name VARCHAR,
    region VARCHAR
);

INSERT INTO planet VALUES
    (1000, 'Coruscant', 'Galactic Core'),
    (1001, 'Vulcan', 'Alpha Quadrant'),
    (1002, 'Pandora', 'Alpha Centauri'),
    (1003, 'Arrakis', 'Dune System'),
    (1004, 'Krypton', 'Solar System'),
    (1005, 'Gallifrey', 'Time Vortex');

CREATE TABLE product (
    id INT PRIMARY KEY,
    reference VARCHAR,
    name VARCHAR,
    vehicle_type_id INT REFERENCES vehicle_type(id),
    price VARCHAR
);

INSERT INTO product VALUES
    (1000, 'P-S-L', 'Small Item - Light Weight', 1000, '5'),
    (1001, 'P-S-M', 'Small Item - Medium Weight', 1001, '10'),
    (1002, 'P-S-H', 'Small Item - Heavy Weight', 1002, '15'),
    (1003, 'P-M-L', 'Medium Item - Light Weight', 1001, '12'),
    (1004, 'P-M-M', 'Medium Item - Medium Weight', 1002, '20'),
    (1005, 'P-M-H', 'Medium Item - Heavy Weight', 1005, '30'),
    (1006, 'P-L-L', 'Large Item - Light Weight', 1002, '25'),
    (1007, 'P-L-M', 'Large Item - Medium Weight', 1005, '35'),
    (1008, 'P-L-H', 'Large Item - Heavy Weight', 1005, '50');

CREATE TABLE delivery (
    id INT PRIMARY KEY,
    name VARCHAR,
    description VARCHAR,
    product_id INT REFERENCES product(id),
    customer_id INT REFERENCES customer(id),
    delivery_date DATE
);

INSERT INTO delivery VALUES
    (1000, 'Del-0001', 'Delivered "Kyber Crystal" swiftly via Speeder Pod', 1000, 1000, '2025-01-05'),
    (1001, 'Del-0002', 'Transported "Vulcan Science Equipment" using Starliner Express', 1001, 1001, '2025-01-08'),
    (1002, 'Del-0003', 'Carried "Alien Relics Set" aboard Cargo Freighter', 1002, 1002, '2025-01-12'),
    (1003, 'Del-0004', 'Delivered "Lightsabers x3" via Starliner Express', 1003, 1003, '2025-01-15'),
    (1004, 'Del-0005', 'Shipped "Ancient Holocron" using Cargo Freighter', 1004, 1004, '2025-01-18'),
    (1005, 'Del-0006', 'Ultra-Fast delivery of "Time Crystals" with Galactic Hauler', 1005, 1005, '2025-01-22'),
    (1006, 'Del-0007', 'Transported "Holodeck VR Module" using Cargo Freighter', 1006, 1000, '2025-01-25'),
    (1007, 'Del-0008', 'Delivered "Starfleet Phaser Set" with Galactic Hauler', 1007, 1001, '2025-01-28'),
    (1008, 'Del-0009', 'Massive delivery of "X-Wing Parts" via Galactic Hauler', 1008, 1002, '2025-01-30'),
    (1009, 'Del-0010', 'Delivered "Lightsaber Hilt Set" swiftly via Speeder Pod', 1000, 1003, '2025-02-02'),
    (1010, 'Del-0011', 'Transported "Star Trek Communicator" using Starliner Express', 1001, 1004, '2025-02-05'),
    (1011, 'Del-0012', 'Carried "Alien Specimen Collection" aboard Cargo Freighter', 1002, 1005, '2025-02-07'),
    (1012, 'Del-0013', 'Delivered "Photon Torpedoes" via Starliner Express', 1003, 1000, '2025-02-10'),
    (1013, 'Del-0014', 'Shipped "Ancient TARDIS Parts" using Cargo Freighter', 1004, 1001, '2025-02-14'),
    (1014, 'Del-0015', 'Ultra-Fast delivery of "Vibranium Shards" with Galactic Hauler', 1005, 1002, '2025-02-18'),
    (1015, 'Del-0016', 'Transported "Holodeck Props" using Cargo Freighter', 1006, 1003, '2025-02-20'),
    (1016, 'Del-0017', 'Delivered "Borg Cube Components" with Galactic Hauler', 1007, 1004, '2025-02-25'),
    (1017, 'Del-0018', 'Massive delivery of "Death Star Plans" via Galactic Hauler', 1008, 1005, '2025-02-28'),
    (1018, 'Del-0019', 'Delivered "Lightsaber Crystal Set" swiftly via Speeder Pod', 1000, 1001, '2025-03-03'),
    (1019, 'Del-0020', 'Transported "Vulcan Science Tools" using Starliner Express', 1001, 1002, '2025-03-05'),
    (1020, 'Del-0021', 'Carried "Alien Relic Figurines" aboard Cargo Freighter', 1002, 1003, '2025-03-08'),
    (1021, 'Del-0022', 'Delivered "Lightsabers x5" via Starliner Express', 1003, 1004, '2025-03-10'),
    (1022, 'Del-0023', 'Shipped "Holocron Collection" using Cargo Freighter', 1004, 1005, '2025-03-13'),
    (1023, 'Del-0024', 'Ultra-Fast delivery of "Time Crystals Set" with Galactic Hauler', 1005, 1000, '2025-03-16'),
    (1024, 'Del-0025', 'Transported "Holodeck VR Items" using Cargo Freighter', 1006, 1001, '2025-03-18'),
    (1025, 'Del-0026', 'Delivered "Starfleet Phaser Set x2" with Galactic Hauler', 1007, 1002, '2025-03-22'),
    (1026, 'Del-0027', 'Massive delivery of "X-Wing Engines" via Galactic Hauler', 1008, 1003, '2025-03-25');

