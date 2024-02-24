SELECT a.ANIMAL_ID,a.ANIMAL_TYPE,a.NAME
FROM ANIMAL_INS as a
LEFT JOIN ANIMAL_OUTS as b
USING(ANIMAL_ID)
WHERE b.ANIMAL_ID IS NOT NULL 
    AND a.SEX_UPON_INTAKE LIKE 'Intact%'
    AND (b.SEX_UPON_OUTCOME  LIKE 'Spayed%' or b.SEX_UPON_OUTCOME  LIKE 'Neutered%')
ORDER BY a.ANIMAL_ID