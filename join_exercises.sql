use employees;


-- Create a file named join_exercises.sql to do your work in.

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT de.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees.employees as e
JOIN employees.dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN employees.departments as de
  ON de.dept_no = dm.dept_no
  WHERE dm.to_date = '9999-01-01'
  ORDER BY de.dept_name;


--   Department Name    | Department Manager
--  --------------------+--------------------
--   Customer Service   | Yuchang Weedman
--   Development        | Leon DasSarma
--   Finance            | Isamu Legleitner
--   Human Resources    | Karsten Sigstam
--   Marketing          | Vishwani Minakawa
--   Production         | Oscar Ghazalie
--   Quality Management | Dung Pesch
--   Research           | Hilary Kambil
--   Sales              | Hauke Zhang


-- Find the name of all departments currently managed by women.

SELECT de.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees.employees as e
JOIN employees.dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN employees.departments as de
  ON de.dept_no = dm.dept_no
  WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
  ORDER BY de.dept_name;

-- Department Name | Manager Name
-- ----------------+-----------------
-- Development     | Leon DasSarma
-- Finance         | Isamu Legleitner
-- Human Resources | Karsetn Sigstam
-- Research        | Hilary Kambil

-- Find the current titles of employees currently working in the Customer Service department.


SELECT et.title as 'Title', COUNT(e.emp_no) as 'Count'
FROM employees.employees as e
JOIN employees.dept_emp as demp
  ON demp.emp_no = e.emp_no
JOIN employees.departments as de
  ON de.dept_no = demp.dept_no
  JOIN employees.titles as et
  ON et.emp_no = e.emp_no
  WHERE et.to_date = '9999-01-01' 
  AND demp.to_date > now()
  AND de.dept_name = 'Customer Service'
  GROUP BY et.title;

-- Title              | Count
-- -------------------+------
-- Assistant Engineer |    68
-- Engineer           |   627
-- Manager            |     1
-- Senior Engineer    |  1790
-- Senior Staff       | 11268
-- Staff              |  3574
-- Technique Leader   |   241


-- Find the current salary of all current managers.
SELECT de.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', es.salary AS 'Salary'
FROM employees.employees as e
JOIN employees.dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN employees.departments as de
  ON de.dept_no = dm.dept_no
  JOIN employees.salaries as es
  ON es.emp_no = e.emp_no
  WHERE dm.to_date = '9999-01-01' AND es.to_date = '9999-01-01'
  ORDER BY de.dept_name;

-- Department Name    | Name              | Salary
-- -------------------+-------------------+-------
-- Customer Service   | Yuchang Weedman   |  58745
-- Development        | Leon DasSarma     |  74510
-- Finance            | Isamu Legleitner  |  83457
-- Human Resources    | Karsten Sigstam   |  65400
-- Marketing          | Vishwani Minakawa | 106491
-- Production         | Oscar Ghazalie    |  56654
-- Quality Management | Dung Pesch        |  72876
-- Research           | Hilary Kambil     |  79393
-- Sales              | Hauke Zhang       | 101987