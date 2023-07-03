--DATA ENGINEERING

CREATE TABLE departments
 	(dept_no VARCHAR,
	 dept_name VARCHAR);
	 
SELECT * FROM departments

CREATE TABLE dept_emp
	(emp_no INT NOT NULL,
	 dept_no VARCHAR);
	
SELECT * FROM dept_emp

CREATE TABLE dept_manager
	(dept_no VARCHAR,
	 emp_no INT NOT NULL);
	
SELECT * FROM dept_manager

CREATE TABLE employees
	(emp_no INT PRIMARY KEY NOT NULL,
	 emp_title_id VARCHAR,	
	 birth_date	VARCHAR,
	 first_name	VARCHAR,
	 last_name	VARCHAR,
	 sex VARCHAR,
	 hire_date VARCHAR);
	
SELECT * FROM employees

CREATE TABLE salaries
	(emp_no INT NOT NULL,
	salary INT NOT NULL);
	
SELECT * FROM salaries

CREATE TABLE titles
	(emp_title_id VARCHAR,
	title VARCHAR);
	
SELECT * FROM titles

