# Employee Analysis Assessment

![sql.png](sql.png)

## Background

The purpose of this project was to hone my SQL skills by performing data analysis for the mock company "Pewlett Hackard". 

The project involved researching employees of the corporation from the 1980s and 1990s. All that remained of the database of employees from that period are six CSV files.

To perform this analysis I designed tables to hold data in the CSVs, imported the CSVs into a SQL database, and answered questions about the data. 


#### Data Modeling

I inspected the CSVs and sketched out an ERD of the tables.


#### Data Engineering

I then used the information to create a table schema for each of the six CSV files. I specified data types, primary keys, foreign keys, and other constraints.

Next, I imported each CSV file into the corresponding SQL table. 


#### Data Analysis

Once I constructed the database, I performed the following analysis:

1. Listed the details of each employee: employee number, last name, first name, sex, and salary.

2. Listed the first name, last name, and hire date for employees who were hired in 1986.

3. Listed the manager of each department including: department number, department name, the manager's employee number, last name, first name.

4. Listed the department of each employee including: employee number, last name, first name, and department name.

5. Listed the first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, I listed the frequency count of employee last names, i.e., how many employees share each last name.

### Visualization

Next I performed a visualization of the data by importing the SQL database into Pandas.

I created a histogram to visualize the most common salary ranges for employees and then created a bar chart of average salary by title.

### Contact
Lauren Parrish
ljeanparrish@gmail.com

