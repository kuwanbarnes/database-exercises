USE employees;
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no

WHERE de.to_date = '9999-01-01'
ORDER BY dept_name;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  AND gender = 'F'
ORDER BY dept_name;



SELECT t.title, count(t.title) AS COUNT
FROM titles as t
         JOIN employees as de
              ON de.emp_no = t.emp_no
         JOIN dept_emp AS d on de.emp_no = d.emp_no
         JOIN departments as dp
              ON dp.dept_no = d.dept_no
WHERE de.hire_date like '%-01-01'
group by title;



SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
GROUP BY d.dept_name, Name, s.salary
;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_name,
       d.dept_name,
       CONCAT(e2.first_name, ' ', e2.last_name)   AS Manager_Name,
FROM employees as e
         JOIN dept_emp as de2
             on de2.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de2.dept_no
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN employees e2 on e2.emp_no =de.emp_no








WHERE e.hire_date= '%'
GROUP BY Employee_name, d.dept_name, Manager_Name
;