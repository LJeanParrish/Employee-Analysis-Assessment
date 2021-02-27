--1. Drop Table IF EXISTS in case already exists
DROP TABLE IF EXISTS departments;

--2. Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

--3. Create  table titles
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);

--4. Create  table employees
CREATE TABLE employees (
	emp_no VARCHAR(30) NOT NULL,
	emp_title VARCHAR(255) NOT NULL, 
	birth_date VARCHAR(255) NOT NULL, 
	first_name VARCHAR(255) NOT NULL, 
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date VARCHAR(50)NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

--5. Create  table dept_emp
CREATE TABLE dept_emp (
	emp_no VARCHAR(50) NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--6. Create  table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--7. Create  table salaries
CREATE TABLE salaries (
	emp_no VARCHAR(30) NOT NULL,
	salary VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--8. Check that all data in tables imported correctly
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;