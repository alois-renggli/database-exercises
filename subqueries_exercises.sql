use employees;

-- Create a file named subqueries_exercises.sql and craft queries to return the results for the following criteria:
--
-- Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT hire_date, COUNT(*)
FROM employees.employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees.employees
    WHERE employees.emp_no = 101010
)
GROUP BY hire_date;
--
-- 69 Rows
--
-- Find all the titles held by all employees with the first name Aamod.

SELECT title
FROM employees.employees as e
JOIN employees.titles as et
ON et.emp_no = e.emp_no
WHERE title IN(
	SELECT title
    FROM employees.titles
	WHERE first_name = 'Aamod'
    );
    --
-- 314 total titles, 6 unique titles
--
-- Find all the current department managers that are female.
--
--
SELECT first_name, last_name
FROM employees.employees as e
JOIN employees.dept_manager as dm
ON dm.emp_no = e.emp_no
WHERE gender IN(
	SELECT gender
    FROM employees.employees
    WHERE gender = 'F' AND dm.to_date = '9999-01-01'
    );
-- +------------+------------+
-- | first_name | last_name  |
-- +------------+------------+
-- | Isamu      | Legleitner |
-- | Karsten    | Sigstam    |
-- | Leon       | DasSarma   |
-- | Hilary     | Kambil     |
-- +------------+------------+