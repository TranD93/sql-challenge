-- DATA ANALYSIS
----List the employee number, last name, first name, sex, and salary of each employee
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

---List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '%1986';

---List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

---List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no;

----List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

---List each employee in the Sales department, including their employee number, last name, and first name 
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales';

----List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

---List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) AS count_ln
FROM employees
GROUP BY last_name
ORDER BY count_ln desc
