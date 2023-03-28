# U07-SQL-Project

The code above is SQL code that creates a database schema with five tables: Categories, Customer, Orders, Brands, and Products. Each table has columns that define the structure of the data to be stored in it.

The Categories table has three columns: CategoryID (an auto-incrementing integer), Name (a string up to 50 characters), and Description (a string up to 255 characters).

The Customer table has five columns: CustomerID (an auto-incrementing integer), FirstName (a string up to 50 characters), LastName (a string up to 50 characters), Email (a custom data type email that is a string up to 100 characters and is unique), and PhoneNumber (a string up to 20 characters).

The Orders table has five columns: OrderID (an auto-incrementing integer), CustomerID (a foreign key that references the Customer table on the CustomerID column), OrderDate (a date), TotalPrice (a decimal number with up to 10 digits and 2 decimal places), and PaymentStatus (a string up to 20 characters).

The Brands table has three columns: BrandID (an auto-incrementing integer), Name (a string up to 50 characters), and Description (a string up to 255 characters).

The Products table has seven columns: ProductID (an auto-incrementing integer), Name (a string up to 50 characters), Description (a string up to 255 characters), Price (a decimal number with up to 10 digits and 2 decimal places), BrandID (a foreign key that references the Brands table on the BrandID column), CategoryID (a foreign key that references the Categories table on the CategoryID column), and Image (binary data). Additionally, there is a foreign key constraint added to the Products table that references the Categories table on the CategoryID column, and the ON DELETE action is set to CASCADE. This means that if a category is deleted, all products in that category are also deleted.
