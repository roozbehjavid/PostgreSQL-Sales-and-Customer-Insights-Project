-- customer table

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    preferences JSONB,
    location VARCHAR(50)
);

-- orders table

CREATE TABLE orders (
    order_id SERIAL, 
    customer_id INT NOT NULL, 
    order_date DATE NOT NULL, 
    order_total NUMERIC(9,2),
    PRIMARY KEY (order_id, order_date)
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) PARTITION BY RANGE(order_date);

CREATE TABLE orders_2022 PARTITION OF orders
FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE orders_2023 PARTITION OF orders
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE orders_2024 PARTITION OF orders
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- products table

CREATE TABLE products (
    product_id INT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50), 
    price NUMERIC(9,2),
    stock INT CHECK (stock > 0),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- order_items table

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    order_date DATE, 
    product_id INT NOT NULL,
    quantity INT CHECK (quantity > 0),
    price NUMERIC(9,2),
    FOREIGN KEY (order_id, order_date) REFERENCES orders(order_id, order_date),   
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
