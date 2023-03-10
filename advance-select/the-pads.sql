SELECT
CONCAT(Name,"(", LEFT(Occupation,1),")") AS NAME_PARENTHETICAL
FROM OCCUPATIONS
ORDER BY NAME_PARENTHETICAL ASC;

SELECT
CONCAT("There are a total of ", COUNT(Occupation)," ",LOWER(Occupation),"s.")
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation;
