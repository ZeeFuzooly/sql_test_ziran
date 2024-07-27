-- inserting into product table
INSERT INTO Products (name, description, category, image, status, tags, created_by)
VALUES
('Product 1', 'This is a product 1', 'Category 1', 'https://via.placeholder.com/150', 'active', 'tag1,tag2', 1),
('Product 2', 'This is a product 2', 'Category 2', 'https://via.placeholder.com/150', 'active', 'tag1,tag2', 2),
('Product 3', 'This is a product 3', 'Category 3', 'https://via.placeholder.com/150', 'active', 'tag1,tag2', 3);

-- insertng into product restriction table
INSERT INTO ProductRestrictions (product_id, type, sub_type, value)
VALUES
(1, 'age', 'min', '18'),
(1, 'age', 'max', '60'),
(1, 'qty', 'max', '2'),
(2, 'age', 'min', '18'),
(2, 'age', 'max', '60'),
(2, 'qty', 'max', '2'),
(3, 'age', 'min', '18'),
(3, 'age', 'max', '60'),
(3, 'qty', 'max', '2');

-- inserting into product types table
INSERT INTO ProductTypes (id, name, status)
VALUES
(1, 'Type 1', 'active'),
(2, 'Type 2', 'active'),
(3, 'Type 3', 'active'),
(4, 'Type 4', 'active');

-- innserting into product type amount table
INSERT INTO ProductTypeAmounts (product_id, type_id, price, currency, status)
VALUES
(1, 1, 100, 'USD', 'active'),
(1, 2, 200, 'USD', 'active'),
(1, 3, 300, 'USD', 'active'),
(1, 4, 400, 'USD', 'active'),
(2, 1, 100, 'USD', 'active'),
(2, 2, 200, 'USD', 'active'),
(2, 3, 300, 'USD', 'active'),
(2, 4, 400, 'USD', 'active'),
(3, 1, 100, 'USD', 'active'),
(3, 2, 200, 'USD', 'active'),
(3, 3, 300, 'USD', 'active');

-- inserting in to product type distributions table

INSERT INTO ProductTypeDistributions (id, name, status)
VALUES
(1, 'Supplier', 'active'),
(2, 'Seller', 'active'),
(3, 'Platform', 'active'),
(4, 'Delivery', 'active');

-- inserting into product type distribution amounts table
INSERT INTO ProductTypeDistributionAmounts (product_type_amount_id, product_type_distribution_id, amount)
VALUES
(1, 1, 50),
(1, 2, 30),
(1, 3, 15),
(1, 4, 5),
(2, 1, 100),
(2, 2, 60),
(2, 3, 30),
(2, 4, 10),
(3, 1, 150),
(3, 2, 90),
(3, 3, 45),
(3, 4, 15),
(4, 1, 200),
(4, 2, 120),
(4, 3, 60),
(4, 4, 20),
(5, 1, 50),
(5, 2, 30),
(5, 3, 15),
(5, 4, 5),
(6, 1, 100),
(6, 2, 60),
(6, 3, 30),
(6, 4, 10),
(7, 1, 150),
(7, 2, 90),
(7, 3, 45),
(7, 4, 15),
(8, 1, 200),
(8, 2, 120),
(8, 3, 60),
(8, 4, 20),
(9, 1, 50),
(9, 2, 30),
(9, 3, 15),
(9, 4, 5),
(10, 1, 100),
(10, 2, 60),
(10, 3, 30),
(10, 4, 10),
(11, 1, 150),
(11, 2, 90),
(11, 3, 45),
(11, 4, 15);
