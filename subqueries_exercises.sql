USE employees;
SELECT first_name, last_name, birth_date,hire_date
FROM employees
WHERE hire_date = '1990-10-22';

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );
SELECT  first_name,last_name
FROM employees AS e
WHERE emp_no IN (
SELECT emp_no
    FROM dept_manager as de
    WHERE   de.to_date ='9999-01-01' AND
              e.gender='F'
            );






SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY dept_name;