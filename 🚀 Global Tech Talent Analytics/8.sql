SELECT
    companies.name,
    COUNT(*) AS employee_count
FROM employees
JOIN companies
ON employees.company_id = companies.id
GROUP BY companies.id;
