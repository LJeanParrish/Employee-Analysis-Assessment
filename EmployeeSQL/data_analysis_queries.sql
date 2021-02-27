--1.List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex,	
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986. 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';
--SELECT PARSE('11/26/1987' as date)
--WHERE hire_date >= '01/01/1986' and hire_date <= '12/31/1986';
--where convert(date, ACCOUNTING_DATE) between '2014-01-01' and '2014-12-31'
--WHERE hire_date = '1986';
--hire_date > 12/31/1985 AND hire_date < 01/01/1987;

---------------------------NOT CORRECT FIX--------------------------------------

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT
departments.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM departments
INNER JOIN dept_manager ON
departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

-----------------------------ATTEMPT WITH SUB-QUERIES-------------------------------------------
--3. List the manager of each department with the following information: 
	--department number, department name, the manager's employee number, last name, first name.
SELECT last_name, first_name
FROM employees
WHERE emp_no 
IN(
	SELECT emp_no
	FROM dept_manager 
	WHERE dept_no 
	IN(
		SELECT dept_no,
		FROM departments
		WHERE dept_name = *
		)
	);
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no

--------------------ATTEMPT WITH SUB-QUERIES------------------------
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no
IN(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no 
	IN(
		SELECT dept_no
		FROM departments
		WHERE dept_no



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
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number,last name, first name, and department name.
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name ='Development'


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(first_name) AS "Surname Freq"
FROM employees
GROUP BY last_name
ORDER BY "Surname Freq" DESC;
