USE employees;

# Modify your first query to order by first name
SELECT * FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
# Update the query to order by first name and then last name.
SELECT * FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
#Change the order by clause so that you order by last name before first name
SELECT * FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name,first_name;


#Update your queries for employees with 'E' in their last name to sort the results by their employee number.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no ;
SELECT CONCAT_WS(' ',first_name , last_name)
FROM employees
WHERE last_name LIKE 'E%' OR  last_name LIKE '%E'
ORDER BY emp_no ;

SELECT emp_no,birth_date, CONCAT_WS(' ',first_name , last_name)
FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC ;



#Now reverse the sort order for both queries.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

#first result is the oldest employee who was hired lastx

SELECT CONCAT_WS(' ',first_name,last_name,'- Days worked: ',
    datediff(now(),hire_date))
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date,hire_date DESC ;

SELECT * ,datediff(curdate(),hire_date)
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date,hire_date DESC ;
SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%' ;

