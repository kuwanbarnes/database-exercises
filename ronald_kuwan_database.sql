USE codeup_test_db;

CREATE TABLE UserTable (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         User_id INT NOT NULL,
                         username VARCHAR(50),
                         email  VARCHAR(100) NOT NULL,
                         password  VARCHAR(100) NOT NULL,
                         PRIMARY KEY (id)
);

INSERT INTO UserTable( User_id,username, email, password) VALUES
(1,'kuwan2b','kuwan.barne@gmail.com','Shenderian12');

CREATE TABLE  User_ads(
                          User_id INTEGER UNSIGNED NOT NULL,
                          Ad_id INTEGER UNSIGNED NOT NULL,
                          FOREIGN KEY (Ad_id) REFERENCES AdsTable (id),
                          FOREIGN KEY (User_id) REFERENCES UserTable (id)

);

CREATE TABLE AdsTable (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        Description TEXT NOT NULL,
                        ad_id INT UNSIGNED NOT NULL,
                        PRIMARY KEY (id),
                        FOREIGN KEY (ad_id) REFERENCES UserTable (User_id)
);
CREATE TABLE category (
                          id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        category_id INT UNSIGNED NOT NULL,
                        name VARCHAR(255),
                        PRIMARY KEY (id)
);

INSERT INTO category(category_id,name) VALUES
(1,'Help Wanted'),
(2,'Giveaway'),
(3,'Furniture'),
(4,'Free'),
 (5,'Bikes')
 ;

CREATE TABLE  ads_cate (
                             ad_id INTEGER UNSIGNED NOT NULL,
                             category_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (ad_id) REFERENCES AdsTable (id),
                             FOREIGN KEY (category_id) REFERENCES category(id)





);