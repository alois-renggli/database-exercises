USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT 'Employess with first name of Irena, Vidya, or Maya:';
SELECT * FROM employees.employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
ORDER BY last_name DESC, first_name DESC;
--
-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT 'Employees with last name starting with E:';
SELECT  * FROM employees.employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;
-- Find all employees hired in the 90s — 135,214 rows.
SELECT 'Employees hired in 1990s';
SELECT * FROM employees.employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND (birth_date LIKE '%-12-25')
ORDER BY birth_date ASC, hire_date DESC ;
-- Find all employees born on Christmas — 842 rows.
SELECT 'Employees born on Christmas;';
SELECT * FROM employees.employees WHERE birth_date LIKE '%-12-25';
-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT 'Employees with a q in last name';
SELECT * FROM employees.employees WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%');


-- Update your queries for employees whose names start and end with 'E'.
-- Use concat() to combine their first and last name together as a single column in your results.
--
SELECT 'Employees with last name starting with E:';
SELECT  CONCAT (first_name, ' ', last_name) FROM employees.employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC 
LIMIT 10;

-- For your query of employees born on Christmas and hired in the 90s,
-- use datediff() to find how many days they have been working at the company
-- (Hint: You will also need to use now() or curdate())
SELECT 'Employees hired in 1990s';
SELECT first_name, last_name, datediff(curdate(),hire_date) FROM employees.employees 
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND (birth_date LIKE '%-12-25')
ORDER BY birth_date ASC, hire_date DESC ;