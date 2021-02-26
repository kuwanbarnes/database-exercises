USE codeup_test_db;

SELECT * FROM albums WHERE release_date < 2000;

SELECT * FROM albums WHERE  genre LIKE '%rock';

SELECT * FROM albums WHERE  release_date LIKE '198%';

SELECT * FROM albums WHERE sales BETWEEN 200.5 AND 350.5;

SELECT * FROM albums WHERE  artist IN ('Michael Jackson', 'Whitney Houston', 'Eagles');

SELECT * FROM albums WHERE  release_date LIKE '198%' AND sales BETWEEN 200.5 AND 350.5;

SELECT * FROM albums WHERE artist LIKE  'M%' OR artist LIKE  'W%';

SELECT * FROM albums WHERE  sales >250 AND (artist LIKE 'M%' OR release_date > 1970);

SELECT * FROM albums WHERE genre LIKE '%pop%' AND (artist IN ('Shania Twain','Michael Jackson') OR sales >200);
USE employees;
SELECT emp_no,title,to_date
FROM titles
WHERE to_date IS NOT NULL ;
