USE book_shop;
--
SELECT first_name,
    title,
    grade
FROM students
    INNER JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;
--
SELECT first_name,
    title,
    grade
FROM students
    RIGHT JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;
--
SELECT first_name,
    title,
    grade
FROM students
    LEFT JOIN papers ON students.id = papers.student_id;
--
SELECT first_name,
    IFNULL(title, 'MISSING'),
    IFNULL(grade, 0)
FROM students
    LEFT JOIN papers ON students.id = papers.student_id;
--
SELECT first_name,
    IFNULL(AVG(grade), 0) AS average
FROM students
    LEFT JOIN papers ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;
--
SELECT first_name,
    Ifnull(Avg(grade), 0) AS average,
    CASE
        WHEN Avg(grade) IS NULL THEN 'FAILING'
        WHEN Avg(grade) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    end AS passing_status
FROM students
    LEFT JOIN papers ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;