#The IN operator can state multiple values in a WHERE clause.

SELECT * FROM employees WHERE first_name = "Eric" OR first_name = "Tom" OR first_name = "Sam"; 

#IN operator return the data written in the parentheses
SELECT * FROM employees WHERE first_name IN ("Eric", "Tom", "Sam");