USE codeup_test_db;
SELECT name AS 'Pink floyd' FROM albums  WHERE artist = 'Pink Floyd';
# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS 'DATE' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
# The genre for Nevermind
SELECT  genre AS 'GENRE TYPE' FROM albums WHERE name ='Nevermind';
# Which albums were released in the 1990s
SELECT  name FROM albums WHERE  release_date >=1990 && release_date < 2000;
        # Which albums had less than 20 million certified sales
SELECT name AS '20MIL_SOLD' FROM albums WHERE sales <=20.0;
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name AS 'ROCK MUSIC' FROM  albums WHERE genre = 'Rock';
#SELECT name AS 'ROCK MUSIC' FROM  albums WHERE genre LIKE = '%rock%';
