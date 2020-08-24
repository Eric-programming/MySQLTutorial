#INSERT INTO SELECT
CREATE TABLE new_employees(
	    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);
INSERT INTO new_employees
SELECT * FROM employees WHERE birth_date BETWEEN "1952-02-17" AND "1952-02-18";


SELECT * FROM new_employees;

DROP TABLE new_employees;

#Example 2
CREATE TABLE new_employees(
	emp_no      INT             NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,  
    birth_date  DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

INSERT INTO new_employees
SELECT emp_no, first_name, last_name, birth_date FROM employees WHERE gender = "M" AND (birth_date BETWEEN "1960-03-21" AND "1960-03-22");
