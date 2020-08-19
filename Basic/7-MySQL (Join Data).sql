#JOIN Clause
SELECT * FROM sales_person
JOIN purchase ON sales_person.employee_id = purchase.employee_id;

#JOIN Clause
SELECT * FROM sales_person
INNER JOIN purchase ON sales_person.employee_id = purchase.employee_id;

#List out all the left table rows even if there is no match in the right table
SELECT * FROM sales_person
LEFT JOIN purchase ON sales_person.employee_id = purchase.employee_id;

#List out all the right table rows even if there is no match in the left table
SELECT * FROM sales_person
RIGHT JOIN purchase ON purchase.employee_id = sales_person.employee_id;