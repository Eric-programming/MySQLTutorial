#Function in SQL

#Step 1: Make sure the function doesn't exists
DROP FUNCTION IF EXISTS f_emp_avg_salary;

#Step 2: Create the function
DELIMITER $$
CREATE FUNCTION f_emp_avg_salary () RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

DECLARE v_avg_salary DECIMAL(10,2);

SELECT AVG(salary) INTO v_avg_salary FROM salaries;
RETURN v_avg_salary;
END$$
DELIMITER ;

#Step 3: call the function
SELECT f_emp_avg_salary();

