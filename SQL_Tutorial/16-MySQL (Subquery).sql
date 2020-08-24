/**
Subquery is nested query
**/
SELECT * FROM dept_manager;

SELECT * FROM employees;

#We only want to see all the dept_manager in the employees list OR we want to select all the department managers in the employees list.

#Solution 1 (JOIN)
SELECT t1.* FROM employees t1 JOIN
dept_manager t2 ON t1.emp_no = t2.emp_no;

#Subquery nested in the SELECT and FROM
#Solution 2 (IN)
SELECT * FROM employees
WHERE emp_no IN (SELECT emp_no  FROM dept_manager);

#Solution 3 (EXISTS)
SELECT * FROM employees t1
WHERE EXISTS (SELECT emp_no FROM dept_manager t2 WHERE t1.emp_no = t2.emp_no);

#We use IN when the datasets are small and we use EXISTS when the datasets is large because it is faster


#assign employee number 110022 as a manager to all employees from 10001 to 10020, and employee
#number 110039 as a manager to all employees from 10021 to 10040

#STEP 1
SELECT (SELECT emp_no FROM employees WHERE emp_no = 110022) AS emp_manager, 
e.emp_no FROM employees e
WHERE e.emp_no BETWEEN 10001 AND 10020;

#STEP 2
SELECT (SELECT emp_no FROM employees WHERE emp_no = 110039) AS emp_manager, 
e.emp_no FROM employees e
WHERE e.emp_no BETWEEN 10021 AND 10040;

#STEP 3
SELECT * FROM (SELECT (SELECT emp_no FROM employees WHERE emp_no = 110022) AS emp_manager, 
e.emp_no FROM employees e
WHERE e.emp_no BETWEEN 10001 AND 10020) AS t1
UNION
SELECT * FROM (SELECT (SELECT emp_no FROM employees WHERE emp_no = 110039) AS emp_manager, 
e.emp_no FROM employees e
WHERE e.emp_no BETWEEN 10021 AND 10040) AS t2;