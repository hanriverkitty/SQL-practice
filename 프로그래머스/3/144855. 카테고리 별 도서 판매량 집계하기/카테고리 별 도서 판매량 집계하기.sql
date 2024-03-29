SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK as a
LEFT JOIN (SELECT BOOK_ID, SUM(SALES) as SALES
          FROM BOOK_SALES
          WHERE SALES_DATE LIKE '2022-01%'
          GROUP BY BOOK_ID ) AS b
ON a.BOOK_ID = b.BOOK_ID
GROUP BY CATEGORY
ORDER BY CATEGORY;