SELECT grant_name
FROM grants
WHERE id =
(
    SELECT grant_id
    FROM project_grants
    WHERE project_id = 3
);
