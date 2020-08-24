#Use Aggregte Functions with Joins

SELECT * FROM dept_emp;
SELECT * FROM departments;

SELECT COUNT(emp_no), dept_no FROM dept_emp GROUP BY dept_no;

#How many people in each department
SELECT COUNT(table1.dept_no) AS no_of_emp, table2.dept_name FROM dept_emp AS table1
JOIN
departments AS table2
ON table1.dept_no = table2.dept_no GROUP BY dept_name;

#############################################
#All Employees
SELECT COUNT(*) FROM employees;

#Count Man and Woman
SELECT gender, COUNT(emp_no) FROM employees GROUP BY gender;

#Department Employee
SELECT * FROM dept_emp;

#Employees
SELECT * FROM employees;

#Gender population in different department
SELECT COUNT(IF(t2.gender = 'M', 1, NULL) ) AS MALE, COUNT(IF(t2.gender = 'F', 1, NULL) ) AS FEMALE, t1.dept_no FROM dept_emp AS t1
JOIN employees AS t2 
ON t1.emp_no = t2.emp_no
GROUP BY dept_no;