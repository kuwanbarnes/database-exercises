USE employees;
SELECT first_name, last_name, birth_date,hire_date
FROM employees
WHERE hire_date = '1990-10-22';

SELECT  *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

---------
SELECT title,COUNT(title)
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
GROUP BY title;

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

---------


SELECT  first_name,last_name
FROM employees AS e
WHERE gender='F' AND emp_no IN (
SELECT emp_no
    FROM dept_manager as de
    WHERE   to_date ='9999-01-01'
            );






