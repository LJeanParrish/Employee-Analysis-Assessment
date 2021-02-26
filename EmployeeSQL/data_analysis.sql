--1.List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex,	
employees.emp_title_id
salaries.emp_no,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986. 
SELECT first_name, last_name, hire_date
FROM employees
WHERE
hire_date > 12/31/1985 AND hire_date < 01/01/1987;

--3. List the manager of each department with the following information: department number, department name,
	--the manager's employee number, last name, first name.
-----------------ATTEMPT USING JOINS **NOT FINISHED**_______________________________________
-- SELECT
-- departments.dept_no
-- departments.dept_name
-- dept_manager.dept_no
-- dept_manager.emp_no
-- FROM departments
-- INNER JOIN dept_manager ON
-- departments.dept_no = dept_manager.dept_no
-----------------------------ATTEMPT WITH SUB-QUERIES-------------------------------------------
-- SELECT dept_no, dept_name
-- FROM departments
-- WHERE dept_no IN
-- (
--   SELECT emp_no
--   FROM dept_manager 
--   WHERE emp_no IN
--   (
--     SELECT last_name, first_name
--     FROM employees
--     WHERE emp_no LIKE 'Q%'
--   )
-- );

-------------------Reordered Join Attempt-------------------------
SELECT last_name, first_name
    FROM employees
    WHERE emp_no IN 
(
	SELECT emp_no
	FROM dept_manager 
	WHERE dept_no IN
	
	(SELECT dept_no, dept_name
	 FROM departments
	 WHERE dept_no, dept_name LIKE 'Q%'
	 )
);

--4. List the department of each employee with the following information: employee number, 
	----last name, first name, and department name.
SELECT dept_name
    FROM departments
    WHERE dept_no IN 
(
	SELECT dept_no
	FROM dept_emp
	WHERE emp_no IN
	
	(SELECT emp_no, first_name, last_name
	 FROM employees
	 WHERE emp_no, first_name, last_name LIKE 'Q%'
	 )
);

--5. List first name, last name, and sex for employees whose first name 
	--is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name == "Hercules" AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, 
	--last name, first name, and department name.
SELECT (
employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.emp_no,
dept_emp.dept_no,
departments.dept_no
departments.dept_name)
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no, = departments.dept_no
WHERE dept_no == "doo7";

--7. List all employees in the Sales and Development departments, 
	--including their employee number, last name, first name, and department name.
SELECT (
employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.emp_no,
dept_emp.dept_no,
departments.dept_no
departments.dept_name)
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no, = departments.dept_no
WHERE dept_no == "doo7" AND dept_"d005";

--8. In descending order, list the frequency count of employee last names, 
	--i.e., how many employees share each last name.
SELECT last_name, COUNT(emp_no) AS "Surname Freq"
FROM employees
GROUP BY last_name,
ORDER BY "Surname Freq" DESC;
