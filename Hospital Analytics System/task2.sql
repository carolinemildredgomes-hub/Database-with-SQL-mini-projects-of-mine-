CREATE VIEW department_summary AS
SELECT
    d.department_name,
    COUNT(a.id) AS total_admissions
FROM departments d
JOIN admissions a
ON d.id = a.department_id
GROUP BY d.id;
