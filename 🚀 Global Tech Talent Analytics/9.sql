SELECT companies.name
FROM companies
JOIN employees
ON companies.id = employees.company_id
GROUP BY companies.id
ORDER BY COUNT(*) ASC
LIMIT 1;
