SELECT 
    CITY
FROM
    STATION
WHERE 
    (LAT_N IS NOT NULL)  AND
    (LONG_W IS NOT NULL) AND 
    LOWER(SUBSTRING(CITY,1,1)) IN ('a', 'e', 'i', 'o', 'u')
;
