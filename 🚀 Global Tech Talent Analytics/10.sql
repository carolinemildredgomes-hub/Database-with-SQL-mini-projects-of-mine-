SELECT
    companies.name,
    AVG(employees.salary) AS average_salary
FROM employees
JOIN companies
ON employees.company_id = companies.id
GROUP BY companies.id
ORDER BY average_salary DESC
LIMIT 10;
