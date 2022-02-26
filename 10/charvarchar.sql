USE book_shop;
--
CREATE TABLE IF NOT EXISTS dogs (name CHAR(5), breed VARCHAR(10));
--
INSERT INTO dogs (name, breed)
VALUES ('bob', 'beagle');
--
INSERT INTO dogs (name, breed)
VALUES ('robby', 'corgi');
--
SELECT *
FROM dogs;