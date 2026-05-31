SELECT
    employees.first_name,
    employees.last_name,
    employees.salary,
    performance_reviews.performance_score
FROM employees
JOIN performance_reviews
ON employees.id = performance_reviews.employee_id;
