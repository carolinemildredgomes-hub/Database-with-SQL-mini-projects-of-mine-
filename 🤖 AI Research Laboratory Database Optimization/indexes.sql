CREATE INDEX idx_contributions_researcher_id
ON contributions(researcher_id);

CREATE INDEX idx_contributions_project_id
ON contributions(project_id);

CREATE INDEX idx_projects_category
ON projects(category);

CREATE INDEX idx_project_grants_project_id
ON project_grants(project_id);
