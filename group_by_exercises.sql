USE employees;



-- Create a new file named group_by_exercises.sql
-- In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT DISTINCT title FROM employees.titles;

-- Senior Engineer
-- Staff
-- Engineer
-- Senior Staff
-- Assistant Engineer
-- Technique Leader
-- Manager


-- Find your query for employees whose last names start and end with 'E'. 
-- Update the query find just the unique last names that start and end with 'E' using GROUP BY. 
-- The results should be:
SELECT 'Employees with last name starting with E:';
SELECT  last_name
FROM employees.employees 
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name
LIMIT 10;

-- Eldridge
-- Erbe
-- Erde
-- Erie
-- Etalle
-- Update your previous query to now find unique combinations of first and last name where the 
-- last name starts and ends with 'E'. You should get 846 rows.



-- Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT 'Employees with a q in last name';
SELECT CONCAT(COUNT(last_name),'  ', last_name) FROM employees.employees WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%')
GROUP BY last_name;

-- Chleq
-- Lindqvist
-- Qiwen


-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees 
-- whose unusual name is shared with others.



-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number 
-- of employees for each gender with those names. Your results should be:
SELECT 'Employess with first name of Irena, Vidya, or Maya:';
SELECT CONCAT(COUNT(last_name), ' ' , gender) FROM employees.employees 
WHERE 
-- gender = 'M' AND 
(first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
-- ORDER BY last_name DESC, first_name DESC
GROUP BY gender;

-- 441 M
-- 268 F