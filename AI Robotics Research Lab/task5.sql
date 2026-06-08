CREATE VIEW research_summary AS
SELECT
    project_title,
    substr(project_title,1,10)
    AS keyword_preview
FROM projects;
