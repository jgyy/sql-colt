USE book_shop;
--
CREATE TABLE IF NOT EXISTS items(price DECIMAL(5, 2));
--
INSERT INTO items(price)
VALUES(7);
--
INSERT INTO items(price)
VALUES(798);
--
INSERT INTO items(price)
VALUES(34.88);
--
INSERT INTO items(price)
VALUES(298.99);
--
INSERT INTO items(price)
VALUES(1.99);
--
SELECT *
FROM items;