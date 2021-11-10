-- #### Data Analysis

-- 1. List the following details of each employee: employee number, last name, 
--    first name, sex, and salary.
-- left join salary info from salary table to the employees table
SELECT a.emp_no as employee_number, a.last_name, a.first_name, a.sex AS gender, b.salary 
FROM employees AS a
LEFT JOIN salaries AS b
ON (a.emp_no = b.emp_no)
ORDER BY employee_number;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- postgresql "date" function: https://www.postgresql.org/docs/9.1/functions-datetime.html
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date) = '1986';


-- 3. List the manager of each department with the following information: department number, 
--    department name, the manager's employee number, last name, first name.
-- left join departments to dept_manage, and left join the employees to the joined table
SELECT a.dept_no , b.dept_name, a.emp_no AS manager_emp_number, c.last_name, c.first_name
FROM dept_manager AS a
LEFT JOIN departments AS b
ON (a.dept_no = b.dept_no)
LEFT JOIN employees AS c
ON (a.emp_no = c.emp_no)
ORDER BY a.emp_no;


-- 4. List the department of each employee with the following information: employee number, 
--    last name, first name, and department name.
-- inner join employees and dept_manager (not everyone is manager)
SELECT a.emp_no AS manager_emp_number, c.last_name, c.first_name, b.dept_name
FROM dept_manager AS a
INNER JOIN departments AS b
ON (a.dept_no = b.dept_no)
INNER JOIN employees AS c
ON (a.emp_no = c.emp_no)
ORDER BY manager_emp_number;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and 
--    last names begin with "B."
SELECT first_name, last_name, sex AS gender FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, 
--    last name, first name, and department name.
SELECT a.emp_no AS emp_number, a.last_name, a.first_name, c.dept_name
FROM employees AS a
LEFT JOIN dept_emp AS b
ON (a.emp_no = b.emp_no)
LEFT JOIN departments AS c
ON (b.dept_no = c.dept_no)
WHERE c.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their 
--    employee number, last name, first name, and department name.
SELECT a.emp_no AS emp_number, a.last_name, a.first_name, c.dept_name
FROM employees AS a
LEFT JOIN dept_emp AS b
ON (a.emp_no = b.emp_no)
LEFT JOIN departments AS c
ON (b.dept_no = c.dept_no)
WHERE c.dept_name IN ('Sales', 'Development');


-- 8. In descending order, list the frequency count of employee last names, 
--    i.e., how many employees share each last name.
-- count and groupby last name, order by the count in descending
SELECT last_name, COUNT(last_name) AS last_name_count FROM employees
GROUP BY last_name 
ORDER BY last_name_count DESC;

