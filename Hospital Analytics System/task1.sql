CREATE VIEW rural_patients AS
SELECT *
FROM patients
WHERE district LIKE '%Rural%';
