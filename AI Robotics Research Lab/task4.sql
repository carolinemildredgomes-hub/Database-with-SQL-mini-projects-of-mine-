CREATE VIEW researcher_productivity AS
SELECT
    r.researcher_name,
    COUNT(pub.id) AS publications
FROM researchers r
JOIN projects p
ON r.id = p.researcher_id
JOIN publications pub
ON p.id = pub.project_id
GROUP BY r.id;
