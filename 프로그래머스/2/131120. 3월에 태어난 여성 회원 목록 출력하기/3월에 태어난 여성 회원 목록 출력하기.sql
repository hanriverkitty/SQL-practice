-- 코드를 입력하세요
SELECT MEMBER_ID, MEMBER_NAME, GENDER, LEFT(DATE_OF_BIRTH,10) as DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER = 'W' and MONTH(DATE_OF_BIRTH)='03'  and TLNO is not NULL
ORDER BY MEMBER_ID;