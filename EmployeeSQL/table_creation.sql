--1. Drop Table in case already exists
DROP TABLE departments;

--2. Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

--3. View table columns and datatypes
SELECT * FROM departments;

--4. Import data from CSV then rerun query from step3 to confirm data imported correctly

--5. Drop Table in case already exists
DROP TABLE dept_emp;

--6. Create dept_emp table
CREATE TABLE dept_emp (
	emp_no VARCHAR(50) NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);

--7. View table columns and datatypes, then Import data from CSV then rerun query  to confirm data imported correctly
SELECT * FROM dept_emp;

---COME BACK TO SEE WHY THIS ISN'T WORKING

--8. Drop Table in case already exists
DROP TABLE dept_manager;

--9. Create dept_manager table
CREATE TABLE dept_manager (
	id SERIAL,
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(50) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)	
);

--10. View table columns and datatypes, then Import data from CSV then rerun query to confirm data imported correctly
SELECT * FROM dept_manager;

--11. Drop Table in case already exists
DROP TABLE titles;

--12. Create  table titles
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);

--13. View table columns and datatypes, then Import data from CSV then rerun query to confirm data imported correctly
SELECT * FROM titles;

--14. Drop Table in case already exists
DROP TABLE employees;

--15. Create  table employees
CREATE TABLE employees (
	emp_id SERIAL,
	emp_no VARCHAR(30) NOT NULL,
	emp_title VARCHAR(255) NOT NULL, 
	birth_date VARCHAR(255) NOT NULL, 
	first_name VARCHAR(255) NOT NULL, 
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date VARCHAR(50)NOT NULL,
	PRIMARY KEY (emp_id),
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

--16. View table columns and datatypes, then Import data from CSV then rerun query to confirm data imported correctly
SELECT * FROM employees;

--17. Drop Table in case already exists
DROP TABLE salaries;

--18. Create  table salaries
CREATE TABLE salaries (
	sal_id SERIAL,
	emp_no VARCHAR(30) NOT NULL,
	salary VARCHAR(30) NOT NULL,
	PRIMARY KEY (sal_id),
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

--19. View table columns and datatypes, then Import data from CSV then rerun query to confirm data imported correctly
SELECT * FROM salaries;