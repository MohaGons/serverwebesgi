CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL NOT NULL,
    description TEXT
);

INSERT INTO products (name, price, description) VALUES
('Product 1', 19.99, 'Description for Product 1'),
('Product 2', 29.99, 'Description for Product 2'),
('Product 3', 39.99, 'Description for Product 3');
