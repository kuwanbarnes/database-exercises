USE employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%' AND  last_name LIKE '%E' group by last_name;

SELECT DISTINCT first_name,last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E'  GROUP BY  first_name, last_name;

