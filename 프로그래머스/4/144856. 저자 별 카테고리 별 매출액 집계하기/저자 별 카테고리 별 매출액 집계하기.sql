SELECT author.AUTHOR_ID, AUTHOR_NAME, CATEGORY, c.TOTAL_SALES
FROM AUTHOR as author
INNER JOIN
    (SELECT a.category, a.author_id as AUTHOR_ID, SUM((SALES * PRICE)) AS TOTAL_SALES
    FROM BOOK as a
    INNER JOIN (SELECT BOOK_ID, SUM(SALES) AS SALES
                FROM BOOK_SALES 
                WHERE SALES_DATE LIKE "2022-01%"
                GROUP BY BOOK_ID) as sale
    ON a.BOOK_ID = sale.BOOK_ID
    GROUP BY author_id, category) as c
ON author.AUTHOR_ID = c.AUTHOR_ID
ORDER BY AUTHOR_ID, CATEGORY DESC
