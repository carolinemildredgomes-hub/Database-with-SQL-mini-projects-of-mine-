CREATE VIEW busiest_departments AS
SELECT
    d.department_name,
    COUNT(a.id) AS admissions
FROM departments d
JOIN admissions a
ON d.id = a.department_id
GROUP BY d.id
ORDER BY admissions DESC;
