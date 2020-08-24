SELECT 
    *
FROM
    dept_emp;
    
SELECT 
    *
FROM
    departments;
    
CREATE TABLE tempDept_emp(
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            ,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no)  ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,dept_no)
);

INSERT INTO tempDept_emp (emp_no, dept_no, from_date, to_date)
SELECT * FROM dept_emp LIMIT 15;

UPDATE tempDept_emp
SET to_date = NULL WHERE to_date = "9999-01-01";

SELECT * FROM tempDept_emp;
##############################################
#JOIN will join two or more tables together if there is a related columns that contains the matching values
#Inner Join Clause Or Join Clauses
SELECT * FROM tempDept_emp AS table1
INNER JOIN departments AS table2 ON table2.dept_no = table1.dept_no ; #Condition order doesn't matter

#Left Join (Join matching values + all values from left table match  all values + no value from right table)
SELECT * FROM  departments AS table1
LEFT JOIN tempDept_emp AS table2 ON table2.dept_no = table1.dept_no; #Condition order doesn't matter

SELECT * FROM tempDept_emp AS table1
LEFT JOIN departments AS table2 ON table1.dept_no = table2.dept_no; #Condition order doesn't matter

#Right Join (Join matching values + all values from right table match all values + no value from LEFT table)
SELECT * FROM  tempDept_emp AS table1
RIGHT JOIN departments AS table2 ON table1.dept_no = table2.dept_no; #Condition order doesn't matter

SELECT * FROM  departments AS table1
RIGHT JOIN tempDept_emp AS table2 ON table1.dept_no = table2.dept_no; #Condition order doesn't matter

#Clean ups#############################################
DROP TABLE tempDept_emp;