USE employees;
SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%' AND  last_name LIKE '%E' group by last_name;

SELECT DISTINCT first_name,last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E'  GROUP BY  first_name, last_name;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%' GROUP BY last_name ORDER BY COUNT(*);

SELECT DISTINCT gender,COUNT(gender) AS TOTAL FROM employees group by gender;

SELECT DISTINCT COUNT(gender),gender FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;



