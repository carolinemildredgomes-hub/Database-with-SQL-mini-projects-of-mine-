SELECT
    companies.name,
    AVG(employees.salary) AS average_salary,
    AVG(performance_reviews.performance_score) AS average_score
FROM companies
JOIN employees
ON companies.id = employees.company_id
JOIN performance_reviews
ON employees.id = performance_reviews.employee_id
GROUP BY companies.id
HAVING average_salary >
(
    SELECT AVG(salary)
    FROM employees
)
AND average_score >
(
    SELECT AVG(performance_score)
    FROM performance_reviews
);
