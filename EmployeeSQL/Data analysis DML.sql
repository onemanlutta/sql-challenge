/***********************************************
** DATA ANALYTICS
** File: EmployeeSQL
** Desc: DML Script for Analysing the EmployeeSQL Database in PostgreSQL
** Auth: Maero, Athanasius Lutta
** Date: 05/01/2024
** Ref : https://github.com/onemanlutta/sql-challenge
************************************************/


/* Q1. List the employee number, last name, first name, sex, and salary of each employee. */

-- SELECT * FROM employees;

SELECT 
	e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;



/* Q2. List the first name, last name, and hire date for the employees who were hired in 1986.*/

SELECT 
	first_name AS "First Name", 
	last_name AS "Last Name", 
	hire_date AS "Date Hired"
FROM employees
WHERE hire_date 
	BETWEEN date('1986-01-01') AND date('1986-12-31');


/* Q3. List the manager of each department along with their department number, department name, employee number, 
last name, and first name.*/
-- SELECT * FROM departments;
SELECT 
	e.first_name AS "First Name", 
	e.last_name AS "Last Name", 
	e.emp_no AS "Employee Number",
	d.dept_name AS "Department",
	dm.dept_no AS "Department Number"
FROM
	employees e INNER JOIN
	dept_manager dm 
	ON e.emp_no = dm.emp_no 
	INNER JOIN
	departments d
	ON dm.dept_no = d.dept_no;


/* Q4. List the department number for each employee along with that employee’s employee number, 
last name, first name, and department name.*/

SELECT 
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.emp_no AS "Employment Number",
	d.dept_name AS "Department"
FROM
	employees e 
	INNER JOIN 
	dept_emp de 
	ON e.emp_no = de.emp_no
	INNER JOIN
	departments d
	ON de.dept_no = d.dept_no
GROUP BY e.emp_no, e.first_name, e.last_name, d.dept_name;

-- Alternatively using a SUBQUERY and JOIN (though it is slower than the previous query)

SELECT 
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.emp_no AS "Employment Number",
	(SELECT DISTINCT
	 	d.dept_name 
	 FROM departments d 
	 WHERE d.dept_no = de.dept_no 
	 )AS "Department"
FROM
	employees e 
	INNER JOIN 
	dept_emp de
	ON e.emp_no = de.emp_no;


/* Q5. List first name, last name, and sex of each employee whose first name is Hercules 
and whose last name begins with the letter B.*/

SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "SEX"
FROM
	employees
WHERE
	first_name = 'Hercules' AND
	last_name LIKE 'B%';


/* Q6. List each employee in the Sales department, including their employee number, last name, and first name.*/
-- SELECT * FROM departments;

SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	emp_no AS "Employment Number"
FROM
	employees
WHERE 
	emp_no IN
	(
		SELECT 
			emp_no
		FROM
			dept_emp
		WHERE 
			dept_no IN 
		(
		SELECT 
			dept_no
		FROM
			departments
		WHERE
			dept_name = 'Sales'
		)
	);

-- Alternatively using joins (faster!!)

SELECT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.emp_no AS "Employment Number"
FROM
	employees e
INNER JOIN
	dept_emp de ON e.emp_no = de.emp_no
INNER JOIN
	departments d ON de.dept_no = d.dept_no
WHERE
	d.dept_name = 'Sales';
	
	

/* Q7. List each employee in the Sales and Development departments, including their employee number, 
last name, first name, and department name.*/

SELECT DISTINCT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.emp_no AS "Employment Number",
	d.dept_name AS "Department"
FROM
	employees e
INNER JOIN
	dept_emp de ON e.emp_no = de.emp_no
INNER JOIN
	departments d ON de.dept_no = d.dept_no
WHERE
	d.dept_name IN ('Sales', 'Development');

/* Q8. List the frequency counts, in descending order, of all the employee last names (that is, how 
many employees share each last name).*/

SELECT 
	last_name AS "Last Name", 
	COUNT(last_name) AS "Frequency Counts"
FROM
	employees
GROUP BY
	last_name
HAVING 
	COUNT(last_name) >1
ORDER BY
	last_name DESC;