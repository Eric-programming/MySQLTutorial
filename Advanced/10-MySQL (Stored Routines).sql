#Stored Routines is a SQL statement that can be stored on the database server 

USE employees;
DROP procedure IF EXISTS select_all_employees;

#Step 1: Create a procedure

DELIMITER $$
USE employees $$
CREATE PROCEDURE select_all_employees()
BEGIN
	SELECT * FROM employees;
END$$
DELIMITER ;

#Step 2: Retrieve and call the procedure
CALL employees.select_all_employees();

#Step 3: Practical Example with parameter
DELIMITER $$
USE employees $$
CREATE PROCEDURE select_limited_employees(IN number_of_employees INTEGER)
BEGIN
	SELECT * FROM employees LIMIT number_of_employees;
END$$
DELIMITER ;

CALL employees.select_limited_employees(2);

#Step 3: Practical Example with parameter and aggregate functions 
DELIMITER $$
USE employees $$
CREATE PROCEDURE select_employees_salary(IN salary_point INTEGER)
BEGIN
	SELECT COUNT(*) AS number_employees FROM (SELECT salary FROM salaries WHERE salary > salary_point) table_salary;
END$$
DELIMITER ;

CALL employees.select_employees_salary(100000);

#Step 4: Parameter In and Out
DELIMITER $$
USE employees $$
CREATE PROCEDURE select_avg_salary(OUT average_salary DECIMAL(10,2))
BEGIN
	SELECT AVG(salary) INTO average_salary FROM salaries;
END$$
DELIMITER ;


SET @average_salary	= 0; #Variable
CALL employees.select_avg_salary(@average_salary);
SELECT @average_salary;


#Clean up
DROP procedure IF EXISTS select_top_employees_salary;
DROP procedure IF EXISTS select_all_employees;
DROP procedure IF EXISTS select_limited_employees;
DROP procedure IF EXISTS select_employees_salary;
DROP procedure IF EXISTS select_avg_salary;