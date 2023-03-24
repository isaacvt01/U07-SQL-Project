-- Create an index of the most used columns

CREATE INDEX products_category_id_index ON Products(CategoryID);
CREATE INDEX orders_customer_id_index ON Orders(CustomerID);


