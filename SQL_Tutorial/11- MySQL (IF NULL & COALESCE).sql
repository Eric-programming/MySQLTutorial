#IF NULL & COALESCE

/**
returns the first non-null value in the conditions.
IFNULL only takes 2 arguments but coalesce can take more than 2 arguments
**/
#Change######################################### 
SELECT * FROM salaries;

ALTER TABLE salaries 
MODIFY COLUMN salary INT;

UPDATE salaries 
SET salary = NULL 
WHERE salary >= 88000;

#IF NULL#########################################
SELECT emp_no, IFNULL (salary, "N/A") AS salary FROM salaries;
SELECT emp_no, COALESCE (salary, NULL, "N/A") AS salary FROM salaries;
#Revert#########################################
UPDATE salaries 
SET salary = 90000 
WHERE salary IS NULL;

ALTER TABLE salaries 
MODIFY COLUMN salary INT NOT NULL;



