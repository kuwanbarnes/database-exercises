USE codeup_test_db;

DROP table IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name  VARCHAR(100) NOT NULL,
    release_date INT(4) NOT NULL,
    sales DECIMAL (6,3) NOT NULL,
    genre VARCHAR (100),
    PRIMARY KEY (id)
);