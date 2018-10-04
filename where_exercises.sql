USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT 'Employess with first name of Irena, Vidya, or Maya:';
SELECT * FROM employees.employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
--
-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT 'Employees with last name starting with E:';
SELECT  * FROM employees.employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
-- Find all employees hired in the 90s — 135,214 rows.
SELECT 'Employees hired in 1990s';
SELECT * FROM employees.employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND (birth_date LIKE '%-12-25');
-- Find all employees born on Christmas — 842 rows.
SELECT 'Employees born on Christmas;';
SELECT * FROM employees.employees WHERE birth_date LIKE '%-12-25';
-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT 'Employees with a q in last name';
SELECT * FROM employees.employees WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%');