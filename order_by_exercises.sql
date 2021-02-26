USE employees;
#all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT * FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
SELECT * FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name,first_name;
SELECT * FROM employees WHERE  first_name = 'Irena'OR first_name='Vidya'OR first_name= 'Maya';
SELECT * FROM employees WHERE  (first_name = 'Irena'OR first_name='Vidya'OR first_name= 'Maya') AND gender ='M';

#Find all employees whose last name starts with 'E'
SELECT * FROM employees WHERE last_name LIKE 'E%' ;
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no ;
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%' OR  last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND  last_name LIKE '%E';

#all employees hired in the 90s
SELECT * FROM employees WHERE hire_date LIKE '199%';
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY birth_date,hire_date DESC ;
# all employees born on Christmas
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';
#all employees with a 'q' in their last name
SELECT * FROM employees WHERE last_name LIKE '%Q%';
SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%' ;

