-- Insertar datos de ejemplo en la tabla Customer
INSERT INTO Customer (FirstName, LastName, Email, PhoneNumber)
VALUES
    ('Juan', 'Pérez', 'juanperez@example.com', '12345678'),
    ('María', 'Gómez', 'mariagomez@example.com', '23456789'),
    ('Luis', 'García', 'luisgarcia@example.com', '34567890');

-- Insertar datos de ejemplo en la tabla Brands
INSERT INTO Brands (Name, Description)
VALUES

    ('SonicPower', 'The power of sound in your hands'),
    ('UltraVision', 'See everything in high definition');

-- Insertar datos de ejemplo en la tabla Categories
INSERT INTO Categories (Name, Description)
VALUES
    ('Electronics', 'Electronic devices and gadgets'),
    ('Clothing', 'Clothes and fashion accessories'),
    ('Beauty', 'Beauty and personal care products');

-- Insertar datos de ejemplo en la tabla Products
INSERT INTO Products (Name, Description, Price, BrandID, CategoryID, Image)
VALUES
    ('Wireless Headphones', 'Noise-cancelling headphones with Bluetooth', 99.99, 2, 1, NULL),
    ('Ultra HD Smart TV', '65-inch 4K TV with built-in streaming services', 1499.99, NULL, 1, NULL),
    ('Leather Jacket', 'Classic black leather jacket for men', 199.99, NULL, 2, NULL),
    ('Facial Moisturizer', 'Daily facial moisturizer with SPF 30', 19.99, NULL, 3, NULL);
	
INSERT INTO Orders (CustomerID, OrderDate, TotalPrice, PaymentStatus) 
VALUES
(1, '2022-01-01', 100.00, 'Paid'),
(1, '2022-02-15', 75.50, 'Paid'),
(2, '2022-02-20', 200.00, 'Pending'),
(3, '2022-03-01', 50.00, 'Paid'),
(4, '2022-03-10', 150.00, 'Paid'),
(2, '2022-03-15', 25.00, 'Pending'),
(5, '2022-03-20', 75.00, 'Paid'),
(6, '2022-03-22', 50.00, 'Pending');
