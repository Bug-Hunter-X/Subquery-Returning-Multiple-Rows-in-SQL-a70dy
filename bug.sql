```sql
SELECT * FROM employees WHERE department_id = (SELECT id FROM departments WHERE name = 'Sales');
```
This query might return unexpected results if the `departments` table has multiple rows with the name 'Sales'.  The subquery will return more than one `id`, leading to a syntax error in many database systems (e.g., MySQL), or unexpected behavior (returning multiple departments) in others (e.g., PostgreSQL with default settings).