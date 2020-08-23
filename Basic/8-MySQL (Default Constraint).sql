#Default Constraint is used to assign a default values to every row of a column
CREATE TABLE sales_bouns(
	bouns_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id INT NOT NULL,
    FOREIGN KEY(employee_id) REFERENCES sales_person(employee_id),
    bouns_amount INT NOT NULL DEFAULT 100
);

#All sales people
SELECT * FROM sales_person;

INSERT INTO sales_bouns (employee_id)
VALUES (1), (2), (3);

#All Sales Bouns
SELECT * FROM sales_bouns;

#Delete DEFAULT constraint
ALTER TABLE sales_bouns
ALTER COLUMN bouns_amount DROP DEFAULT;

#Error because bouns_amount doesn't have a default value
INSERT INTO sales_bouns (employee_id, bouns_amount)
VALUES (4, 12);


DROP TABLE sales_bouns;