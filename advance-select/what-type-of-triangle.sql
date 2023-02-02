SELECT
CASE
    WHEN A + B <= C OR A + C <= B OR C + B <= A THEN "Not A Triangle"
    WHEN A = B AND A = C THEN "Equilateral"
    WHEN A = B OR A = C THEN "Isosceles"
    WHEN A <> B AND B <>  C THEN "Scalene"
END AS triangle_t
FROM TRIANGLES;
