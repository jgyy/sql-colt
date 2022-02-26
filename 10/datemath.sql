USE book_shop;
--
SELECT *
FROM people;
--
SELECT DATEDIFF(NOW(), birthdate)
FROM people;
--
SELECT name,
    birthdate,
    DATEDIFF(NOW(), birthdate)
FROM people;
--
SELECT birthdt
FROM people;
--
SELECT birthdt,
    DATE_ADD(birthdt, INTERVAL 1 MONTH)
FROM people;
--
SELECT birthdt,
    DATE_ADD(birthdt, INTERVAL 10 SECOND)
FROM people;
--
SELECT birthdt,
    DATE_ADD(birthdt, INTERVAL 3 QUARTER)
FROM people;
--
SELECT birthdt,
    birthdt + INTERVAL 1 MONTH
FROM people;
--
SELECT birthdt,
    birthdt - INTERVAL 5 MONTH
FROM people;
--
SELECT birthdt,
    birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR
FROM people;