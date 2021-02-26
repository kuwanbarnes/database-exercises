USE codeup_test_db;
# All albums in your table.
SELECT * FROM albums ;
UPDATE albums
SET sales= sales /10;

#All albums released before 198
SELECT name AS 'BEFORE 1980s hits' FROM albums WHERE release_date <=1980;
UPDATE albums
SET  release_date= release_date-100
WHERE release_date< 1980;
# All albums by Michael Jackson
SELECT  name AS 'MJ' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Michael Jackson'
WHERE artist = 'Peter Jackson';