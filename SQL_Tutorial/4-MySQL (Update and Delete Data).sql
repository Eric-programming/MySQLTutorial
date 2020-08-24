SELECT * FROM purchase;

SELECT * FROM sales_person;

#Update Data
UPDATE purchase
SET purchase_year = 1888 WHERE employee_id = 3;


#DELETE Data
INSERT INTO purchase (employee_id, purchase_year, purchase_amount)
VALUES (4, 2020, 2000);
DELETE FROM purchase WHERE employee_id = 4;
