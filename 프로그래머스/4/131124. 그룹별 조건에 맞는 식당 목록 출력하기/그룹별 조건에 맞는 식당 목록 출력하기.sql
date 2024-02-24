SELECT l.MEMBER_NAME, k.REVIEW_TEXT, DATE_FORMAT(k.REVIEW_DATE,"%Y-%m-%d") as REVIEW_DATE
FROM REST_REVIEW as k
LEFT JOIN MEMBER_PROFILE as l
USING(MEMBER_ID)
WHERE MEMBER_ID in (SELECT MEMBER_ID
                    FROM REST_REVIEW
                    GROUP BY MEMBER_ID
                    HAVING COUNT(*) = (SELECT MAX(COUNT)
                                      FROM (SELECT MEMBER_ID, COUNT(*) AS COUNT
                                           FROM REST_REVIEW
                                           GROUP BY MEMBER_ID) as a
                                                            )) 
ORDER BY REVIEW_DATE, k.REVIEW_TEXT;                
                   
                 