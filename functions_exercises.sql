USE employees;

SELECT * 
FROM employees 
WHERE (first_name = 'Irena' 
OR first_name = 'Vidya' 
OR first_name = 'Maya')
AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;

SELECT CONCAT(first_name, ' ', last_name)
AS 'Name'
FROM employees 
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * 
FROM employees 
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT DATEDIFF(NOW(), hire_date) AS 'Days Worked', 
CONCAT(first_name, ' ', last_name) AS 'Name'
FROM employees
WHERE DAY(birth_date) = 25
AND MONTH(birth_date) = 12
AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

