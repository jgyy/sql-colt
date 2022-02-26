USE book_shop;
--
SELECT title,
    AVG(rating) as avg_rating
FROM series
    JOIN reviews ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;