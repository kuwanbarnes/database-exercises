USE  employees;


SELECT  first_name,last_name,birth_date
FROM employees
WHERE  emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE  to_date> NOW()
    )

SELECT  E.first_name,E.last_name,E.birth_date
FROM employees as E
    RIGHT JOIN dept_manager dm on e.emp_no = dm.emp_no
    WHERE dm.to_date> NOW();


SELECT  first_name,last_name,birth_date
FROM employees
WHERE  emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE  to_date> NOW() AND dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Production'
        )
)

INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES
(500000,'1991-01-15','Kuwan','Barnes')

INSERT INTO dept_emp(emp_no, dept_no, from_date, to_date) VALUES (
                                                                  (SELECT emp_no FROM employees WHERE first_name = ' ' AND last_name = '' AND birth_date = ''
),'d005','2021-03-01','9999-01-01');
)