USE book_shop;
--
SELECT MIN(released_year)
FROM books;
--
SELECT MIN(released_year)
FROM books;
--
SELECT MIN(pages)
FROM books;
--
SELECT MAX(pages)
FROM books;
--
SELECT MAX(released_year)
FROM books;
--
SELECT MAX(pages),
    ANY_VALUE(title)
FROM books;