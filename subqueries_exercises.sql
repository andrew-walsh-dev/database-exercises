USE employees;

SELECT * 
FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010);

SELECT title
FROM titles 
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT *
FROM dept_manager
WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F')
AND DATEDIFF (CURRENT_DATE, to_date) < 0;