USE employees;
#all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees WHERE  first_name = ('Irena'OR 'Vidya'OR 'Maya') AND gender ='M';

#Find all employees whose last name starts with 'E'
SELECT * FROM employees WHERE last_name LIKE 'E%' AND  last_name LIKE '%E';
#all employees hired in the 90s
SELECT * FROM employees WHERE hire_date LIKE '199%' AND (birth_date LIKE '%-12-25');
# all employees born on Christmas
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';
#all employees with a 'q' in their last name
SELECT * FROM employees WHERE last_name NOT LIKE '%QU%' AND last_name LIKE '%Q%' ;

