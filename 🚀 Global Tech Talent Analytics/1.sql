SELECT
    employees.first_name,
    employees.last_name,
    companies.name
FROM employees
JOIN companies
ON employees.company_id = companies.id;
