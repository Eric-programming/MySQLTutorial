#Join more than 2 tables
SELECT * FROM dept_emp;

SELECT * FROM departments;

SELECT * FROM salaries;
# (departments + dept_emp + salaries) Average salary for each department?

SELECT t1.dept_name, t1.dept_no, AVG(t3.salary) AS avg_salary, COUNT(t3.emp_no) AS emp_no FROM departments t1 
JOIN dept_emp t2 ON t1.dept_no = t2.dept_no
JOIN salaries t3 ON t2.emp_no = t3.emp_no 
GROUP BY t1.dept_no;
#Lowest salary is HR and highest is sales

#JOIN employees + salaries + titles => Find who has the highest salary and in which position in the company?

SELECT t1.first_name, t1.last_name, t2.salary, t3.title, t5.dept_name FROM employees t1
JOIN salaries t2 ON t1.emp_no = t2.emp_no
JOIN titles t3 ON t2.emp_no = t3.emp_no
JOIN dept_emp t4 ON t3.emp_no = t4.emp_no
JOIN departments t5 ON t4.dept_no = t5.dept_no ORDER BY t2.salary DESC LIMIT 1;
#Lowest salary is HR and highest is sales


