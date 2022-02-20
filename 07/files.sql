CREATE DATABASE IF NOT EXISTS cat_app;
--
use cat_app;
--
CREATE TABLE cats (
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
);
--
DESC cats;
--
INSERT INTO cats(name, age)
VALUES('Charlie', 17);
--
INSERT INTO cats(name, age)
VALUES('Connie', 10);
--
SELECT *
FROM cats;