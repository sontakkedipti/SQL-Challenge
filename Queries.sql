Data Analysis
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT
e.Emp_No AS employee_number,
e.Last_name AS last_name,
e.First_name AS first_name,
e.sex,
s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.Emp_No = s.Emp_No

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
First_name AS first_name,
Last_name AS last_name,
hire_date
FROM employees
WHERE 
hire_date BETWEEN '01-01-1986' AND '12-31-1986' 
ORDER BY 3

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
-- consideration: 
   -- emp_no from department_manager is for department managers
SELECT
dm.emp_no AS dept_manager_no,
dm.dept_no AS department_number,
d.dept_name AS department_name,
e.emp_no AS employee_number,
e.Last_name AS last_name,
e.First_name AS first_name
FROM department_manager AS dm
INNER JOIN  employees AS e
ON dm.emp_no = e.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no



-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
de.dept_no AS department_number,
e.emp_no AS employee_number,
e.Last_name AS last_name,
e.First_name AS first_name,
d.dept_name AS department_name
FROM department_employee AS de
INNER JOIN  employees AS e
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT
First_name AS first_name,
Last_name AS last_name,
sex
FROM employees
WHERE 
first_name = 'Hercules'
AND last_name LIKE 'B%'



-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 
e.emp_no as employee_number,
e.Last_name as last_name,
e.First_name as first_name
FROM employees as e
INNER JOIN department_employee as de
ON e.emp_no = de.emp_no
WHERE de.dept_no IN (SELECT dept_no FROM departments WHERE dept_name = 'Sales')



-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
e.emp_no as employee_number,
e.Last_name as last_name,
e.First_name as first_name,
d.dept_name as department_name
FROM employees as e
INNER JOIN department_employee as de
ON e.emp_no = de.emp_no
INNER JOIN departments as d
ON de.dept_no = d.dept_no
WHERE de.dept_no IN (SELECT dept_no FROM departments WHERE dept_name IN('Sales','Development' ))

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT 
last_name,
COUNT(*) AS employee_share_last_name
FROM Employees
GROUP BY 1
ORDER BY 2 DESC
