SELECT
    departments.department_name,
    COUNT(*) AS employee_count
FROM employees
JOIN departments
ON employees.department_id = departments.id
GROUP BY departments.id
HAVING COUNT(*) < 20;
