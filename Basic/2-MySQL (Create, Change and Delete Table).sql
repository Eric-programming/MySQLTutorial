#Create Table
CREATE TABLE sales_person(
	employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, #uniquely identify data using primary key
	employee_name VARCHAR(255) NOT NULL
);
CREATE TABLE purchase(
	purchase_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    purchase_amount INT NOT NULL
);

#Change Table
ALTER TABLE purchase
ADD purchase_year INT,
ADD employee_id INT NOT NULL,
DROP purchase_amount,
ADD FOREIGN KEY (employee_id) REFERENCES sales_person(employee_id);

ALTER TABLE purchase
ADD purchase_amount INT NOT NULL;

#Drop Table
DROP TABLE purchase;

DROP TABLE sales_person;