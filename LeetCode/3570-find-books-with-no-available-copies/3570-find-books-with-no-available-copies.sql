/*
find all books that are currently borrowed(not returned) and have zero copies available in the library
    - A book is considered currently borrowed if there exists a borrowing record with a NULL return_date

order by current borrowers desc, book title asc
*/

-- book have zero copies available
WITH borrowed AS (
    SELECT
        book_id,
        COUNT(*) borrowed_cnt
    FROM
        borrowing_records
    WHERE
        return_date IS NULL
    GROUP BY
        book_id
)
SELECT
    a.book_id,
    a.title,
    a.author,
    a.genre,
    a.publication_year,
    b.borrowed_cnt AS current_borrowers
FROM
    library_books a
JOIN
    borrowed b ON a.book_id = b.book_id
                  AND a.total_copies = b.borrowed_cnt
ORDER BY
    current_borrowers DESC,
    a.title;