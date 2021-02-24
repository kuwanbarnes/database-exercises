USE codeup_test_db;

DROP table if exists albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name  VARCHAR(100),
    release_date INT(4) UNSIGNED,
    sales FLOAT ,
    genre TEXT ,
    PRIMARY KEY (id)
);