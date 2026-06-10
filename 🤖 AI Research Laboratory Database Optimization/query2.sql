SELECT researcher_name
FROM researchers
WHERE id IN
(
    SELECT researcher_id
    FROM contributions
    WHERE project_id =
    (
        SELECT id
        FROM projects
        WHERE category='Robotics'
    )
);
