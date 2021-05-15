DROP TABLE departments
DROP TABLE dept_emp
DROP TABLE dept_manager
DROP TABLE employees
DROP TABLE salaries
DROP TABLE titles

CREATE TABLE departments (
	dept_no VARCHAR(30),
	dept_name VARCHAR(30)
);

select *
From departments;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30)
);

select *
From dept_emp;

CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT NOT NULL
);

select *
From dept_manager;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date DATE
);

select *
From employees;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

select *
From salaries;

CREATE TABLE titles (
	title_id VARCHAR(30),
	title VARCHAR(30)
);

select *
From titles;

-- Import csv files in same order as tables created
Select *
FROM departments;

Select *
FROM dept_emp;

Select *
FROM dept_manager;

Select *
FROM employees;

Select *
FROM salaries;

Select *
FROM titles;

-- --------------------------------------


