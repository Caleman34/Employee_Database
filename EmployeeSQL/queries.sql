-- Question 1: list for each employee: emp_no, last_name, first_name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s on
	e.emp_no = s.emp_no
	
-- view first 500 and save output into seperate file
LIMIT 500;


-- 	Question 2: List first_name, last_name, hire_date of employees in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986'

-- view first 500 and save output into seperate file
LIMIT 500;


-- 	Question 3: list dept_managers with dept_num, dept_name, emp_no, last_name, first_name
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments AS d
INNER JOIN dept_manager AS dm on
	d.dept_no = dm.dept_no
INNER JOIN employees AS e on
	e.emp_no = dm.emp_no;

-- Question 4: list
	
