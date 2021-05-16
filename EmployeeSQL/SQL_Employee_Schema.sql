DROP TABLE departments
DROP TABLE titles
DROP TABLE employees
DROP TABLE dept_emp
DROP TABLE dept_manager
DROP TABLE salaries

-- -------------------------------departments
CREATE TABLE departments (
	dept_no VARCHAR(30),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);

select *
From departments;

-- ----------------------------------titles
CREATE TABLE titles (
	title_id VARCHAR(30),
	title VARCHAR(30),
	PRIMARY KEY (title_id)
);

select *
From titles;

-- -------------------------------employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

select *
From employees;

-- -------------------------------dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select *
From dept_emp;

-- ---------------------------------dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select *
From dept_manager;

-- -------------------------------------salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select *
From salaries;

-- -------Import csv files in same order as tables created then view------

Select * FROM departments;

Select * FROM titles;

Select * FROM employees;

Select * FROM dept_emp;

Select * FROM dept_manager;

Select * FROM salaries;