#Union (Combine SELECT statement into one but it only retrive distinct values in the output)

SELECT dept_name FROM departments;

SELECT first_name from employees;

#Must have same number of columns and data type
SELECT dept_name AS all_names FROM departments
UNION
SELECT first_name from employees;

#Use Union
CREATE TABLE employees_dup (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL
);

INSERT INTO employees_dup 
SELECT * FROM employees LIMIT 4;
#For insert Duplicate
INSERT INTO employees_dup 
SELECT * FROM employees LIMIT 4;

SELECT * FROM employees_dup;


SELECT dept_name AS all_names FROM departments
UNION
SELECT first_name from employees_dup;

SELECT dept_name AS all_names FROM departments
UNION ALL
SELECT first_name from employees_dup;
#########################
DROP TABLE employees_dup;