CREATE VIEW most_cited AS
SELECT
    p.project_title,
    pub.citations
FROM projects p
JOIN publications pub
ON p.id = pub.project_id
ORDER BY citations DESC;
