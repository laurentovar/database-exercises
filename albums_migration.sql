USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (100) NOT NULL,
    name VARCHAR (120) NOT NULL,
    release_date INT(4),
    sales FLOAT (5,2) UNSIGNED,
    genre VARCHAR (100),
    PRIMARY KEY (id)

);
