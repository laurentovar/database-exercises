
use adlister_db;
DROP TABLE ads;
DROP TABLE categories;
DROP TABLE users;
#
CREATE TABLE users(
                      id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      username VARCHAR(100) NOT NULL,
                      email VARCHAR(100) NOT NULL,
                      password VARCHAR(100) NOT NULL,
                      PRIMARY KEY (id)
);
CREATE  TABLE categories
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED DEFAULT NULL,
    category_id INT UNSIGNED DEFAULT NULL,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);
INSERT INTO categories (category) VALUES ('Music');
INSERT INTO categories (category) VALUES ('Sports');
INSERT INTO categories (category) VALUES ('Arts');
INSERT INTO categories (category) VALUES ('Math');
INSERT INTO categories (category) VALUES ('Science');
INSERT INTO categories (category) VALUES ('History');
INSERT INTO categories (category) VALUES ('Languages');
INSERT INTO categories (category) VALUES ('Programming');
INSERT INTO categories (category) VALUES ('Other');
