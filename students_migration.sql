USE deimos_db;

CREATE TABLE IF NOT EXISTS student (
    id INT UNSIGNED NOT NULL AUTO-INCREMENT,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    birthday DATE,
    projects TEXT NOT NULL,
    is_hired TINYINT NOT NULL,
    PRIMARY KEY (id)
);

