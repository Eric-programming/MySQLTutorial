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
