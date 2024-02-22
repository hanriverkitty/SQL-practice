SELECT car_type, count(*) as cars
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' or OPTIONS LIKE '%가죽시트%' or OPTIONS LIKE '%열선시트%'
GROUP BY car_type
ORDER BY car_type