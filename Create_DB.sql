-- Define a custom data type called "email" that is a string with a maximum length of 100 characters.
CREATE DOMAIN email AS VARCHAR(100)
   CHECK (
      VALUE ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}$'
   );

-- Create a table called "Categories" with columns for a category ID (auto-incrementing), category name, and category description.
CREATE TABLE Categories (
    CategoryID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(255)
);

-- Create a table called "Customer" with columns for a customer ID (auto-incrementing), first name, last name, email address (unique), and phone number.
CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email email UNIQUE,
    PhoneNumber VARCHAR(20)
);

-- Create a table called "Orders" with columns for an order ID (auto-incrementing), customer ID (foreign key to Customer table), order date, total price, and payment status.
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INTEGER REFERENCES Customer(CustomerID) ON DELETE CASCADE,
    OrderDate DATE,
    TotalPrice DECIMAL(10,2),
    PaymentStatus VARCHAR(20)
);

-- Create a table called "Brands" with columns for a brand ID (auto-incrementing), brand name, and brand description.
CREATE TABLE Brands (
    BrandID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(255)
);

-- Create a table called "Products" with columns for a product ID (auto-incrementing), product name, product description, price, brand ID (foreign key to Brands table), category ID (foreign key to Categories table), and product image (as binary data).
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    Name VARCHAR(50),
    Description VARCHAR(255),
    Price DECIMAL(10,2),
    BrandID INTEGER REFERENCES Brands(BrandID),
    CategoryID INTEGER REFERENCES Categories(CategoryID),
    Image BYTEA
);

-- Add a foreign key constraint to the Products table that references the Categories table on the CategoryID column, and set the ON DELETE action to CASCADE (so that if a category is deleted, all products in that category are also deleted).
ALTER TABLE Products ADD CONSTRAINT fk_category_id FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID) ON DELETE CASCADE;
