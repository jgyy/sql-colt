USE book_shop;
--
SELECT title,
    released_year
FROM books;
--
SELECT title,
    released_year
FROM books
WHERE released_year < 2000;
--
SELECT title,
    released_year
FROM books
WHERE released_year <= 2000;
--
SELECT 3 < -10;
--
SELECT -10 < -9;
--
SELECT 42 <= 42;
--
SELECT 'h' < 'p';
--
SELECT 'Q' <= 'q';