SELECT projects.project_title,
       COUNT(*) AS contributors
FROM projects
JOIN contributions
ON projects.id=contributions.project_id
GROUP BY projects.id
ORDER BY contributors DESC;
