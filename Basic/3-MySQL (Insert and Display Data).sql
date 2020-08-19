#Insert data
INSERT INTO sales_person (employee_name)
VALUES ("Tom");

INSERT INTO sales_person (employee_name)
VALUES ("John"), ("Amy"), ("Chris");

INSERT INTO purchase (employee_id, purchase_year, purchase_amount)
VALUES (1, 2020, 100), (1, 2019, 200), (2, 2018, 400), (3, 2018, 30);

#Display Data
SELECT * FROM sales_person;
SELECT * FROM purchase;
SELECT * FROM sales_person LIMIT 1;
SELECT employee_name FROM sales_person;
SELECT employee_id AS 'ID', employee_name AS 'NAME' FROM sales_person;
SELECT employee_id AS 'ID', employee_name AS 'NAME' FROM sales_person ORDER BY employee_name;
SELECT employee_id AS 'ID', employee_name AS 'NAME' FROM sales_person ORDER BY employee_name DESC;
SELECT DISTINCT purchase_year FROM purchase;