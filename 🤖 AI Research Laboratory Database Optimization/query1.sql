SELECT projects.project_title,
       contributions.role
FROM contributions
JOIN projects
ON contributions.project_id = projects.id
WHERE contributions.researcher_id = 1;
