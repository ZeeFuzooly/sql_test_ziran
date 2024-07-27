USE sql_prepare;

CREATE TABLE Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    category VARCHAR(255),
    image VARCHAR(255),
    status VARCHAR(50),
    tags TEXT,
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ProductRestrictions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    type VARCHAR(50),
    sub_type VARCHAR(50),
    value TEXT,
    FOREIGN KEY (product_id) REFERENCES Products(id)
);

CREATE TABLE ProductTypes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50)
);

CREATE TABLE ProductTypeAmounts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    type_id INT,
    price DECIMAL(10, 2),
    currency VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY (product_id) REFERENCES Products(id),
    FOREIGN KEY (type_id) REFERENCES ProductTypes(id)
);

CREATE TABLE ProductTypeDistributions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50)
);

CREATE TABLE ProductTypeDistributionAmounts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_type_amount_id INT,
    product_type_distribution_id INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (product_type_amount_id) REFERENCES ProductTypeAmounts(id),
    FOREIGN KEY (product_type_distribution_id) REFERENCES ProductTypeDistributions(id)
);




