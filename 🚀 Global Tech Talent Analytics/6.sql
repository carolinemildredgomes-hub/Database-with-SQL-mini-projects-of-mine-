SELECT
    employees.first_name,
    employees.last_name,
    performance_reviews.performance_score
FROM employees
JOIN performance_reviews
ON employees.id = performance_reviews.employee_id
WHERE performance_score >= 4.8;
