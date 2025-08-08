create database new;
use new;
CREATE TABLE employees (emp_id INT PRIMARY KEY,emp_name VARCHAR(50),dept_id INT);
CREATE TABLE departments (dept_id INT PRIMARY KEY,dept_name VARCHAR(50));
INSERT INTO employees (emp_id, emp_name, dept_id) VALUES(101, 'Alice', 1),(102, 'Bob', 2),(103, 'Charlie', 3),(104, 'David', 4);
INSERT INTO departments (dept_id, dept_name) VALUES(1, 'HR'),(2, 'Finance'),(3, 'IT'),(4, 'Marketing');
-- Q1: List all employees with their department names
SELECT e.emp_name, d.dept_name FROM employees e INNER JOIN departments d ON e.dept_id = d.dept_id;
-- Q2: Show department names along with the names of employees in those departments.
SELECT d.dept_name, e.emp_name FROM departments d INNER JOIN employees e ON d.dept_id = e.dept_id;
-- Q3: Count how many employees are in each department
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count FROM departments d INNER JOIN employees e ON d.dept_id = e.dept_id GROUP BY d.dept_name;
-- Q4:Get details of employees who work in the "HR" department
SELECT e.emp_id,e.emp_name,e.dept_id FROM employees e INNER JOIN departments d ON e.dept_id = d.dept_id WHERE d.dept_name = 'HR';
-- Q5:Find the names of employees and their department IDs where both the employee and department exist
SELECT e.emp_name, e.dept_id FROM employees e INNER JOIN departments d ON e.dept_id = d.dept_id;
-- Q6:Get the names of employees along with department names, sorted by department name
SELECT e.emp_name, d.dept_name FROM employees e INNER JOIN departments d ON e.dept_id = d.dept_id ORDER BY d.dept_name;
