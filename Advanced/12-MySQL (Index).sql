/**
Indexes finds data in a specific column very quickly. 
Without an index, MySQL will look at every rows to find the data. 
If the table is very large, we can use index because it is much faster than reading every rows.
*/

SELECT * FROM employees WHERE gender LIKE "M";

CREATE INDEX i_emp ON employees(gender);

#Primary keys are also index because they are unique and we can extract distinct values from the data table

#Drop Index
ALTER TABLE employees
DROP INDEX i_emp;


/**
Example:
Select all records from the ‘salaries’ table of people whose salary is higher than $100,000

Then, create an index on the ‘i_salary’ column of that table, and check if it has speed up the search of the same SELECT statement.
**/

SELECT salary FROM salaries WHERE salary > 100000;
CREATE INDEX i_salary ON salaries(salary);
