USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    artist VARCHAR(100),
    name VARCHAR(200),
    release_date INT(4),
    sales FLOAT,
    genre VARCHAR(150)
);