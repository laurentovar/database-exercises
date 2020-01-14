CREATE TABLE adLister_users (
    id INT AUTO_INCREMENT,
    email VARCHAR(100) not null,
    password VARCHAR(100) not null,
    username VARCHAR(100) not null,
    PRIMARY KEY (id));

CREATE TABLE ads (
    id INT auto_increment,
    title VARCHAR(150) not null,
    description TEXT (300) not null,
    FOREIGN KEY (id) REFERENCES adLister_users(id)
);

CREATE table categories (
    id INT auto_increment,
    description TEXT not null,
   PRIMARY KEY (id)
);

CREATE table ad_cateogry(
    ad_id INT,
    ad_category_id INT,
    FOREIGN KEY (ad_id) REFERENCES  ads (id),
    FOREIGN KEY (ad_category_id) REFERENCES  categories (id)
);

# For a given ad, what is the email address of the user that created it?
SELECT email from adLister_users where id IN (select id from ads where title = 'framework');

# For a given ad, what category, or categories, does it belong to?
SELECT description from categories where id IN (SELECT id from ads where title = 'framework');

# For a given category, show all the ads that are in that category.
SELECT * from ad_cateogry where ad_category_id in (select id from categories where description = 'Cross-group encompassing access');

# For a given user, show all the ads they have posted.
SELECT * from ads where id in (SELECT  id from adLister_users where username = 'gbenning0');
