
CREATE TABLE IF NOT EXISTS Sales (
    SaleID INTEGER PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(30),
    Quantity INTEGER,
    Price DECIMAL(10, 2),
    Discount DECIMAL(5, 2), 
    Region VARCHAR(20),
    SaleDate DATE
);

INSERT INTO Sales (Product, Category, Quantity, Price, Discount, Region, SaleDate) VALUES
('MacBook Pro', 'Electronics', 1, 2500.00, 0.05, 'North', '2025-01-05'),
('Ergonomic Chair', 'Furniture', 4, 350.00, 0.10, 'South', '2025-01-07'),
('iPhone 15', 'Electronics', 2, 999.00, 0.00, 'East', '2025-01-10'),
('Desk Lamp', 'Furniture', 10, 45.00, 0.15, 'West', '2025-01-12'),
('USB-C Hub', 'Accessories', 15, 60.00, 0.20, 'North', '2025-01-15'),
('Monitor 4K', 'Electronics', 3, 500.00, 0.05, 'South', '2025-01-18'),
('Mechanical Keyboard', 'Accessories', 5, 120.00, 0.00, 'East', '2025-01-20'),
('Standing Desk', 'Furniture', 2, 800.00, 0.10, 'West', '2025-01-22'),
('Webcam HD', 'Accessories', 7, 95.00, 0.05, 'North', '2025-01-25'),
('Wireless Mouse', 'Accessories', 12, 30.00, 0.00, 'South', '2025-01-28'),
('iPad Air', 'Electronics', 3, 600.00, 0.05, 'North', '2025-02-02'),
('Coffee Table', 'Furniture', 1, 150.00, 0.00, 'East', '2025-02-05'),
('Gaming Headset', 'Accessories', 8, 80.00, 0.10, 'West', '2025-02-08'),
('Smart Watch', 'Electronics', 5, 250.00, 0.00, 'South', '2025-02-12'),
('Bookshelf', 'Furniture', 2, 200.00, 0.20, 'North', '2025-02-15'),
('Bluetooth Speaker', 'Accessories', 10, 55.00, 0.05, 'East', '2025-02-18'),
('Charging Dock', 'Accessories', 20, 25.00, 0.15, 'West', '2025-02-22'),
('Noise Cancelling Headphones', 'Electronics', 4, 350.00, 0.10, 'North', '2025-02-25'),
('Office Rug', 'Furniture', 1, 120.00, 0.00, 'South', '2025-02-27'),
('Laptop Stand', 'Accessories', 6, 40.00, 0.00, 'East', '2025-03-02');