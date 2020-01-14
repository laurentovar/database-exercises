USE join_test_db;


CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);




CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('Scobby Doo', 'scobbySnacks1@example.com', 2),
('Shaggy Rogers', 'likeZoinks@example.com', 2),
('Velma Dinkley', 'jinkies123@example.com', 2),
('Daphne Blake', 'creepers@example.com', null);

Select * from users;
Select * from roles;

-- JOIN (Also known as INNER JOIN)
Select users.name as user_name,  roles.name as role_name
from users
join roles ON users.id = roles.id;

-- LEFT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

-- RIGHT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;


-- Counting user with specific roles
Select roles.name as role_type, COUNT(*) as user_count
from users
         LEFT JOIN roles ON users.role_id = roles.id
group by roles.name;


