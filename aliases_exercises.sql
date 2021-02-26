USE employees;
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT  CONCAT  (emp_no,' - ',last_name, ',', first_name) AS full_name,birth_date AS DOB
FROM employees AS emp
GROUP BY full_name,  DOB

LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;