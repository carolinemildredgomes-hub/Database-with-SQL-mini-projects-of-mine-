SELECT
    employees.first_name,
    employees.last_name
FROM employees
JOIN departments
ON employees.department_id = departments.id
WHERE departments.department_name = 'Data Science';
