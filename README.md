# U07-SQL-Project

## Introduction

We had to create a project that combines the different things we have learned in this work unit:

- `Integrity constraints:` Integrity constraints are used to ensure that data stored in a database is accurate and consistent. Constraints can be data type constraints, unique key constraints, primary key constraints, check constraints, null constraints, among others. An example would be to have a null constraint on a column that does not allow the insertion of null values.

- `Referential integrity:` Referential integrity is a constraint that ensures that data in one table matches data in another table. For example, if a table has a foreign key that references a primary key in another table, referential integrity ensures that the data in the secondary table cannot contain values that do not exist in the primary table.

- `Cascading actions in referential integrity:` Cascading actions are options that can be specified for a referential integrity constraint. These options indicate what action to take when updating or deleting a row in the main table. Options include "cascade", which automatically updates or deletes corresponding rows in the child table, "restrict", which prevents updating or deleting rows in the primary table that have corresponding rows in the child table, among others.
Date, time or timestamp data types: PostgreSQL supports several date and time related data types, such as DATE, TIME, TIMESTAMP, INTERVAL, among others. For example, a table column can be of type TIMESTAMP to store the exact date and time of a transaction.

- `Binary large objects:` Binary large objects (BLOBs) are large binary data that can be stored in a database. PostgreSQL supports BLOBs through the BYTEA data type. An example of use could be to store image or sound files.

- `Domains:` A domain is a custom data type definition that can be applied to multiple columns in one or more tables. For example, you could create a domain called "email_address" to store email addresses and apply this domain to corresponding columns in different tables.

- `Indexes:` Indexes are data structures used to speed up queries in a database. PostgreSQL supports several types of indexes, such as B-tree indexes, hash indexes, GiST indexes, among others. For example, you could create a B-tree index on a column in a table to speed up queries using that column.

- `Users:` In PostgreSQL, users are used to authenticate to the database and access resources. Users can have different levels of permissions and restrictions. For example, you could create a user named "admin" with full permissions on a database.

- `Privileges:` Privileges are specific permissions granted to users to access resources in a database.




## create_db.sql
In createdb.sql we create a database schema with five tables: Categories, Customer, Orders, Brands, and Products. 
Each table has columns that define the structure of the data to be stored in it.

- Categories table: CategoryID (an auto-incrementing integer), Name (a string up to 50 characters), and Description (a string up to 255 characters).

- Customer table: CustomerID (an auto-incrementing integer), FirstName (a string up to 50 characters), LastName (a string up to 50 characters), Email (a custom data type email that makes you write something like xxxx@xxx.xxx), and PhoneNumber (a string up to 20 characters).

- Orders table has five columns: OrderID (an auto-incrementing integer), CustomerID (a foreign key that references the Customer table on the CustomerID column), OrderDate (a date), TotalPrice (a decimal number with up to 10 digits and 2 decimal places), and PaymentStatus (a string up to 20 characters).

- Brands table: BrandID (an auto-incrementing integer), Name (a string up to 50 characters), and Description (a string up to 255 characters).

- Products table: ProductID (an auto-incrementing integer), Name (a string up to 50 characters), Description (a string up to 255 characters), Price (a decimal number with up to 10 digits and 2 decimal places), BrandID (a foreign key that references the Brands table on the BrandID column), CategoryID (a foreign key that references the Categories table on the CategoryID column), and Image (binary data). Additionally, there is a foreign key constraint added to the Products table that references the Categories table on the CategoryID column, and the ON DELETE action is set to CASCADE. This means that if a category is deleted, all products in that category are also deleted.

## queries.sql

We created 3 queries:

- The first query retrieves all rows from the "Orders" table where the "OrderDate" column is greater than or equal to the date that is 30 days before the current date and time.

- The second query calculates the number of orders in each month of the current year.

- The third query calculates the total sales for the past 3 months.


## uploadimage.py & seeimage.py

We have created a script that uses the psycopg2 library to connect to our PostgreSQL database and to insert an image. 
We have described each step performed in UploadImage.py file to insert the image and SeeImage.py to see the image we have inserted.

To execute the scripts that are in the .py files you must do the following.

First install everything in the requirements.txt with the following command:

`pip install -r requirements.txt`

The lines of the database connection must also be changed, since that is from the docker container that we had locally.

## Indexes

We create the indexes of the category id in products and also of the customer id in orders.

This was simply to simulate that we were creating indexes of the things that we anticipated would be used the most.

## Users and privileges

As you can see in the User_and_grant.sql file, we created a user named isaac with the password '2808'.

We only gave him privileges to make selects in the product table.


## Conclusion

With the work we have done, we have learned new things that we can integrate into our database. We found it very interesting to be able to combine Python with our PostgreSQL database and to be able to insert and collect images from it, even to open images directly with our Python application.

We have found the domains quite interesting, it is something very useful if you want to be precise and strict with the data that can accept that column. The email example is very good.

