USE titles;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT CONCAT(first_name, ' ', last_name)
FROM employees 
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT COUNT(last_name), last_name 
FROM employees 
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(gender), gender
FROM employees 
WHERE (first_name = 'Irena' 
OR first_name = 'Vidya' 
OR first_name = 'Maya')
GROUP BY gender;