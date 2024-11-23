-- Insert sample data into the customers table

INSERT INTO customers (name, email, join_date, location, preferences) 
VALUES 
('Alice Johnson', 'alice.j@example.com', '2023-02-14', 'New York', 
    '{"preferred_items": ["Gaming Laptop", "Bluetooth Headphones"], "preferred_brands": ["BrandX", "BrandY"], "budget_range": {"min": 500, "max": 1800}}'),
('Bob Smith', 'bob.s@example.com', '2023-06-21', 'Los Angeles', 
    '{"preferred_items": ["Smartphone", "Bluetooth Headphones"], "preferred_brands": ["BrandA", "BrandC"], "budget_range": {"min": 300, "max": 1000}}'),
('Catherine Brown', 'catherine.b@example.com', '2023-12-05', 'Chicago', 
    '{"preferred_items": ["Bluetooth Headphones", "Wireless Mouse"], "preferred_brands": ["BrandZ", "BrandX"], "budget_range": {"min": 50, "max": 500}}'),
('Daniel White', 'daniel.w@example.com', '2022-10-29', 'Houston', 
    '{"preferred_items": ["Gaming Laptop", "Mechanical Keyboard"], "preferred_brands": ["BrandY"], "budget_range": {"min": 1000, "max": 2500}}'),
('Ella Adams', 'ella.a@example.com', '2023-04-17', 'Chicago', 
    '{"preferred_items": ["Smartphone"], "preferred_brands": ["BrandC"], "budget_range": {"min": 200, "max": 800}}'),
('Franklin Green', 'frank.g@example.com', '2023-08-22', 'New York', 
    '{"preferred_items": ["Mechanical Keyboard", "Smartphone"], "preferred_brands": ["BrandA"], "budget_range": {"min": 300, "max": 1500}}'),
('Grace Lee', 'grace.l@example.com', '2024-03-10', 'Los Angeles', 
    '{"preferred_items": ["Gaming Laptop", "Bluetooth Headphones"], "preferred_brands": ["BrandX", "BrandZ"], "budget_range": {"min": 600, "max": 2000}}'),
('Henry Clark', 'henry.c@example.com', '2022-12-01', 'Houston', 
    '{"preferred_items": ["Bluetooth Headphones", "Wireless Mouse"], "preferred_brands": ["BrandY"], "budget_range": {"min": 100, "max": 700}}'),
('Ivy Lewis', 'ivy.l@example.com', '2023-11-05', 'Chicago', 
    '{"preferred_items": ["Gaming Laptop"], "preferred_brands": ["BrandX"], "budget_range": {"min": 800, "max": 2200}}'),
('Jack Martinez', 'jack.m@example.com', '2023-05-15', 'New York', 
    '{"preferred_items": ["Smartphone", "Mechanical Keyboard"], "preferred_brands": ["BrandZ"], "budget_range": {"min": 400, "max": 1000}}'),
('Kevin Baker', 'kevin.b@example.com', '2023-07-18', 'Miami', 
    '{"preferred_items": ["Gaming Laptop", "Smartphone"], "preferred_brands": ["BrandX", "BrandY"], "budget_range": {"min": 700, "max": 2000}}'),
('Laura Carter', 'laura.c@example.com', '2023-09-25', 'New York', 
    '{"preferred_items": ["Gaming Laptop", "Bluetooth Headphones", "Wireless Mouse"], "preferred_brands": ["BrandY"], "budget_range": {"min": 600, "max": 1800}}'),
('Michael Diaz', 'michael.d@example.com', '2022-08-11', 'Los Angeles', 
    '{"preferred_items": ["Bluetooth Headphones"], "preferred_brands": ["BrandC"], "budget_range": {"min": 50, "max": 400}}'),
('Natalie Evans', 'natalie.e@example.com', '2023-01-30', 'San Francisco', 
    '{"preferred_items": ["Smartphone", "Mechanical Keyboard", "Wireless Mouse"], "preferred_brands": ["BrandA", "BrandZ"], "budget_range": {"min": 300, "max": 1000}}'),
('Oliver Foster', 'oliver.f@example.com', '2024-02-14', 'New York', 
    '{"preferred_items": ["Gaming Laptop", "Wireless Mouse"], "preferred_brands": ["BrandA", "BrandY"], "budget_range": {"min": 1000, "max": 2500}}'),
('Paula Grant', 'paula.g@example.com', '2023-12-20', 'Houston', 
    '{"preferred_items": ["Bluetooth Headphones", "Mechanical Keyboard", "Wireless Mouse"], "preferred_brands": ["BrandZ"], "budget_range": {"min": 50, "max": 600}}'),
('Quincy Howard', 'quincy.h@example.com', '2022-03-14', 'Miami', 
    '{"preferred_items": ["Gaming Laptop"], "preferred_brands": ["BrandC"], "budget_range": {"min": 800, "max": 2000}}'),
('Rachel Jackson', 'rachel.j@example.com', '2023-06-06', 'Chicago', 
    '{"preferred_items": ["Wireless Mouse"], "preferred_brands": ["BrandX"], "budget_range": {"min": 400, "max": 1200}}'),
('Samuel King', 'samuel.k@example.com', '2024-04-25', 'San Francisco', 
    '{"preferred_items": ["Bluetooth Headphones"], "preferred_brands": ["BrandZ"], "budget_range": {"min": 300, "max": 1000}}'),
('Tina Lopez', 'tina.l@example.com', '2023-10-31', 'Los Angeles', 
    '{"preferred_items": ["Gaming Laptop"], "preferred_brands": ["BrandA"], "budget_range": {"min": 700, "max": 1800}}'),
('Daniel Martinez', 'daniel.martinez@example.com', '2023-09-20', 'Phoenix', 
    '{"preferred_items": ["Gaming Laptop", "Bluetooth Headphones"], "preferred_brands": ["BrandY"], "budget_range": {"min": 500, "max": 1500}}');

-- Insert sample data into the products table

INSERT INTO products (product_id, name, category, price, stock)
VALUES 
    (1, 'Gaming Laptop', 'Electronics', 1499.99, 25),
    (2, 'Wireless Mouse', 'Accessories', 49.99, 100),
    (3, 'Mechanical Keyboard', 'Accessories', 89.99, 50),
    (4, 'Smartphone', 'Electronics', 799.99, 75),
    (5, 'Bluetooth Headphones', 'Accessories', 199.99, 40),
    (6, 'HD Monitor', 'Electronics', 249.99, 30),
    (7, 'USB-C Cable', 'Accessories', 15.99, 200),
    (8, 'Desk Chair', 'Furniture', 119.99, 20),
    (9, 'Standing Desk', 'Furniture', 349.99, 15),
    (10, 'External Hard Drive', 'Electronics', 99.99, 60);

-- Insert sample data into the orders table

INSERT INTO orders (customer_id, order_date, order_total)
VALUES
    (1, '2023-02-15', 1699.98),
    (2, '2023-08-18', 999.98),
    (3, '2024-10-03', 249.98),
    (4, '2023-02-15', 1589.98),
    (5, '2024-10-05', 799.99),
    (6, '2023-09-21', 889.98),
    (7, '2024-10-09', 1699.98),
    (8, '2024-06-06', 249.98),
    (9, '2023-12-09', 1499.99),
    (10, '2023-09-06', 889.98),
    (11, '2024-10-11', 2299.98),
    (12, '2023-11-12', 1749.97),
    (13, '2022-09-11', 199.99),
    (14, '2023-09-11', 939.97),
    (15, '2024-06-15', 1549.98),
    (16, '2024-03-15', 399.97),
    (17, '2022-03-15', 1499.99),
    (18, '2023-09-15', 49.99),
    (19, '2024-09-06', 199.99),
    (20, '2023-12-03', 1499.99),
    (21, '2023-09-24', 1699.98);

-- Insert sample data into the order_items table

INSERT INTO order_items (order_id, order_date, product_id, quantity, price)
VALUES
    (1, '2022-03-15', 1, 1, 1499.99),  -- Order 1: 1 unit of Product ID 1 (Gaming Laptop)  
    (2, '2022-09-11', 5, 1, 199.99),   -- Order 2: 1 unit of Product ID 5 (Bluetooth Headphones)  
    (3, '2023-02-15', 1, 1, 1499.99),  -- Order 3: 1 unit of Product ID 1 (Gaming Laptop) 
    (3, '2023-02-15', 1, 1, 199.99),   -- Order 3: 1 unit of Product ID 5 (Bluetooth Headphones) 
    (4, '2023-02-15', 1, 1, 1499.99),  -- Order 4: 1 unit of Product ID 1 (Gaming Laptop) 
    (4, '2023-02-15', 1, 1, 199.99),   -- Order 4: 1 unit of Product ID 5 (Bluetooth Headphones) 
    (5, '2023-08-18', 4, 1, 799.99),   -- Order 5: 1 unit of Product ID 4 (Smartphone) 
    (5, '2023-08-18', 5, 1, 199.99),   -- Order 5: 1 unit of Product ID 5 (Bluetooth Headphones) 
    (6, '2023-09-06', 4, 1, 799.99),   -- Order 6: 1 unit of Product ID 4 (Smartphone) 
    (6, '2023-09-06', 5, 1, 199.99),   -- Order 6: 1 unit of Product ID 5 (Bluetooth Headphones) 
    (7, '2023-09-11', 3, 1, 89.99),    -- Order 7: 1 unit of Product ID 3 (Mechanical Keyboard) 
    (7, '2023-09-11', 4, 1, 799.99),   -- Order 7: 1 unit of Product ID 4 (Smartphone) 
    (7, '2023-09-11', 2, 1, 49.99),    -- Order 7: 1 unit of Product ID 2 (Wireless Mouse) 
    (8, '2023-09-15', 2, 1, 49.99),    -- Order 8: 1 unit of Product ID 2 (Wireless Mouse) 
    (9, '2023-09-21', 4, 1, 799.99),   -- Order 8: 1 unit of Product ID 4 (Smartphone) 
    (9, '2023-09-21', 3, 1, 89.99),    -- Order 9: 1 unit of Product ID 3 (Mechanical Keyboard) 
    (10, '2023-09-24', 3, 1, 199.99),  -- Order 10: 1 unit of Product ID 5 (Bluetooth Headphones)
    (10, '2023-09-24', 1, 2, 1499.99), -- Order 10: 1 unit of Product ID 1 (Gaming Laptop)
    (11, '2023-11-12', 1, 1, 1499.99), -- Order 11: 1 unit of Product ID 1 (Gaming Laptop)
    (11, '2023-11-12', 2, 1, 49.99),   -- Order 11: 1 units of Product ID 2 (Wireless Mouse)
    (11, '2023-11-12', 5, 1, 199.99),  -- Order 11: 1 unit of Product ID 5 (Bluetooth Headphones)
    (12, '2023-12-03', 1, 1, 1499.99), -- Order 12: 1 unit of Product ID 1 (Gaming Laptop)
    (13, '2023-12-09', 1, 1, 1499.99), -- Order 13: 1 unit of Product ID 4 (Smartphone)
    (14, '2024-03-15', 5, 1, 89.99),   -- Order 14: 1 unit of Product ID 3 (Mechanical Keyboard)
    (14, '2024-03-15', 3, 1, 199.99),  -- Order 14: 1 unit of Product ID 5 (Bluetooth Headphones)  
    (14, '2024-03-15', 2, 1, 49.99),   -- Order 14: 1 unit of Product ID 2 (Wireless Mouse) 
    (15, '2024-06-06', 2, 1, 49.99),   -- Order 15: 1 unit of Product ID 2 (Wireless Mouse)
    (15, '2024-06-06', 5, 1, 199.99),  -- Order 15: 1 unit of Product ID 5 (Bluetooth Headphones)
    (16, '2024-06-15', 1, 1, 1499.99), -- Order 16: 1 unit of Product ID 1 (Gaming Laptop)
    (16, '2024-06-15', 5, 1, 199.99),  -- Order 16: 1 unit of Product ID 5 (Bluetooth Headphones)
    (17, '2024-09-06', 1, 1, 199.99),  -- Order 17: 1 unit of Product ID 5 (Bluetooth Headphones)
    (18, '2024-10-03', 5, 1, 199.99),  -- Order 18: 1 unit of Product ID 5 (Bluetooth Headphones)
    (18, '2024-10-03', 2, 1, 49.99),   -- Order 18: 1 unit of Product ID 2 (Wireless Mouse)
    (19, '2024-10-05', 4, 1, 799.99),  -- Order 19: 1 unit of Product ID 4 (Smartphone)
    (20, '2024-10-09', 1, 1, 1499.99), -- Order 20: 1 unit of Product ID 1 (Gaming Laptop)
    (20, '2024-10-09', 5, 1, 199.99),  -- Order 20: 1 unit of Product ID 5 (Bluetooth Headphones)
    (21, '2024-10-11', 1, 1, 1499.99), -- Order 21: 1 unit of Product ID 1 (Gaming Laptop)
    (21, '2024-10-11', 4, 1, 799.99);  -- Order 21: 1 unit of Product ID 4 (Smartphone)







