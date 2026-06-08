CREATE VIEW patient_statistics AS
SELECT
COUNT(*) AS total_patients,

SUM(
CASE
WHEN gender='Male'
THEN 1
ELSE 0
END
) AS males,

SUM(
CASE
WHEN gender='Female'
THEN 1
ELSE 0
END
) AS females

FROM patients;
