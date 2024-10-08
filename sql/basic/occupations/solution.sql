SELECT MAX(CASE WHEN occupation = 'Doctor' THEN name ELSE NULL END)    AS Doctor,
       MAX(CASE WHEN occupation = 'Professor' THEN name ELSE NULL END) AS Professor,
       MAX(CASE WHEN occupation = 'Singer' THEN name ELSE NULL END)    AS Singer,
       MAX(CASE WHEN occupation = 'Actor' THEN name ELSE NULL END)     AS Actor
FROM (SELECT name, occupation, ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn FROM OCCUPATIONS)
GROUP BY rn
ORDER BY rn;