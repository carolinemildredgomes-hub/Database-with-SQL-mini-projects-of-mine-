SELECT
    departments.department_name,
    AVG(performance_reviews.performance_score)
        AS average_score
FROM employees
JOIN departments
ON employees.department_id = departments.id
JOIN performance_reviews
ON employees.id = performance_reviews.employee_id
GROUP BY departments.id
ORDER BY average_score DESC;
