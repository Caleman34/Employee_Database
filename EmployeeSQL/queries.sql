-- Question 1: list for each employee: emp_no, last_name, first_name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s on
	e.emp_no = s.emp_no
-- view first 500 and save output into seperate file
LIMIT 500;

-- 	Question 2: List first_name, last_name, hire_date of employees in 1986

SELECT