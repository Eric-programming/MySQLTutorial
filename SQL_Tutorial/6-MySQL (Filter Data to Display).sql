#WHERE Clause
SELECT * FROM purchase WHERE purchase_year > 2019;
SELECT DISTINCT employee_name FROM sales_person WHERE employee_name LIKE '%m';

#OR Clause
SELECT * FROM sales_person WHERE employee_name = "Tom" OR employee_name = "Amy";

#AND Clause
SELECT * FROM purchase WHERE purchase_amount >= 100 AND purchase_amount <= 400;

#BETWEEN Clause
SELECT * FROM purchase WHERE purchase_amount BETWEEN 100 AND 400;

#ISNULL Clause
INSERT INTO purchase (employee_id, purchase_amount)
VALUES (4, 100);

SELECT * FROM purchase WHERE purchase_year IS NULL;
