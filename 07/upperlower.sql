USE book_shop;
--
SELECT UPPER('Hello World');
--
SELECT LOWER('Hello World');
--
SELECT UPPER(title)
FROM books;
--
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title))
FROM books;
--
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title))
FROM books;