USE book_shop;
--
SELECT first_name,
    last_name,
    rating
FROM reviewers
    INNER JOIN reviews ON reviewers.id = reviews.reviewer_id;
--
SELECT first_name,
    last_name,
    rating
FROM reviews
    INNER JOIN reviewers ON reviewers.id = reviews.reviewer_id;