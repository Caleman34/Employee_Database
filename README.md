## Repository Info:

Repository Size: 31.5 MB

Code can be run using pgAdmin4, ERD created using www.quickdatabasediagrams.com

Given an employee data base of 6 csv files, schemas were created using primary, foreign, and composite keys to conduct specific searh queries about employees of the company

![1](images/1.png)

![Database Diagram](images/SQL_ERD.png)

# Employee Database: A Mystery in Two Parts

![sql.png](images/sql.png)

#### Data Modeling

Sketch out an ERD of the tables.

![Database Diagram](images/SQL_ERD.png)

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files using primary, foreign, and composite keys as necessary.

* Each CSV file is imported into their corresponding SQL table.

#### My Data Analysis Results

1. Query written for the following details of each employee: employee number, last name, first name, sex, and salary.
```sql
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s on
	e.emp_no = s.emp_no
```
2. Query written for first name, last name, and hire date for employees who were hired in 1986.
```sql
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986'
```
3. Query written for the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
```sql
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS dm on
	d.dept_no = dm.dept_no
INNER JOIN employees AS e on
	e.emp_no = dm.emp_no;
```
4. Query written for the department of each employee with the following information: employee number, last name, first name, and department name.
```sql
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN departments AS d on
	de.dept_no = d.dept_no
INNER JOIN employees AS e on
	e.emp_no = de.emp_no
```
5. Query written for the first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
```sql
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
```
6. Query written for all employees in the Sales department, including their employee number, last name, first name, and department name.
```sql
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e on
	e.emp_no = de.emp_no
INNER JOIN departments AS d on
	de.dept_no = d.dept_no
WHERE dept_name = 'Sales'
```
7. Query written for all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
```sql
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e on
	e.emp_no = de.emp_no
INNER JOIN departments AS d on
	de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
```
8. Query written for in descending order the frequency count of employee last names, i.e., how many employees share each last name.
```sql
SELECT last_name, COUNT(last_name) AS "Name_Count"
FROM employees
GROUP BY last_name
ORDER BY "Name_Count" DESC;
```

## SQL to Pandas

1. Import the SQL database into Pandas

   ```python
   from config import username
   from config import password

   engine = create_engine(f"postgresql://{username}:{password}@localhost:5432/EmployeeSQL")
   conn = engine.connect()
   ```
2. Histogram created to visualize the most common salary ranges for employees.

![SalaryPerEmployee.png](images/SalaryPerEmployee.png)

3. Bar chart created of average salary by title.

![AverageSalaryByJobTitle.png](images/AverageSalaryByJobTitle.png)