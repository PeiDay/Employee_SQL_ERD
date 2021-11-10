# Employee Database: A Mystery in Two Parts

![sql_image.png](https://github.com/PeiDay/SQL-Challenge/blob/main/images/sql_image.png)

## Background

In this repository, the major task is a research project on employees of a corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

We will design the tables to hold data in the CSVs, import the CSVs into a SQL database (Postgres), and answer questions about the data. The two major tasks are:

* Data Engineering / Data Modeling
* Data Analysis


#### Data Engineering / Data Modeling

* Inspect the CSVs and sketch out an ERD of the tables as below, the ERD is saved in the **images** folder.

![employee_db_ERD.png](https://github.com/PeiDay/SQL-Challenge/blob/main/images/employee_db_ERD.png)

* A table schema for each of the six CSV files.
* Set the primary keys check to see if the column is unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.
* Set the foreign keys.
* Import each CSV file into the corresponding SQL table in the same order that the tables were created and account for the headers when importing to avoid errors.


#### Data Analysis

Make queries for the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

#### Data Visualization

Import the `psycopg2` and use `config.py` to execute quesry in JupterNotebook: 

* Make a query to retrieve the salary information, and visualize the most common salary ranges for employees with a histogram.

![Salary_Distribution.png](https://github.com/PeiDay/SQL-Challenge/blob/main/images/Salary_Distribution.png)

* Group the average salary by title and visualize it with a barchart. 
![Salary_title.png](https://github.com/PeiDay/SQL-Challenge/blob/main/images/Salary_title.png)


#### Epilogue

* Make a query to retrieve the salary information for employee number 499942.
