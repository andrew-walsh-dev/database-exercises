USE employees;

-- SELECT dept_managers.dept_name AS 'Department', 
-- CONCAT (employees.first_name, ' ', employees.last_name) AS 'Name'
-- FROM 

-- current dept managers
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

-- current female dept managers
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

--customer service titles count
SELECT t.title AS title, COUNT(title)
FROM dept_emp as de
JOIN titles as t
  ON t.emp_no = de.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE d.dept_name = "Customer Service"
GROUP BY title;

-- current dept managers
SELECT d.dept_name AS dept, CONCAT(e.first_name, ' ', e.last_name) AS manager, s.salary AS salary
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
JOIN salaries as s
    ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';





