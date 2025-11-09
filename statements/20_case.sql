SELECT name, age,
CASE
    WHEN age <= 22 THEN 'Junior'
    WHEN age > 22 AND age <= 30 THEN 'Senior'
    WHEN age > 30 AND age <= 40 THEN 'Expert'
    ELSE 'Master'
END AS "Nivel de experiencia"
FROM "Programadores";