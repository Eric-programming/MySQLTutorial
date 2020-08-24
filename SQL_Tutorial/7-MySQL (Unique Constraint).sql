#Unique Constraint is used when we want to prevent duplicate data in a given field
CREATE TABLE customers(
	customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_email VARCHAR(255) NOT NULL UNIQUE,
    customer_name VARCHAR(255) NOT NULL   
);

INSERT INTO customers (customer_email, customer_name)
VALUES ("abc@abc.com", "Joe"), ("asbc@absc.com", "John");

#Insert Duplicate email will give error
INSERT INTO customers (customer_email, customer_name)
VALUES ("123@abc.com", "Robert");

SELECT * FROM customers;

#Delete Unique
ALTER TABLE customers
DROP INDEX customer_email;

DROP TABLE customers;