```sql
SELECT * FROM employees WHERE department_id IN (SELECT id FROM departments WHERE name = 'Sales');
```
This revised query uses the `IN` operator, which correctly handles the case where the subquery returns multiple `id` values. It selects employees whose `department_id` matches any of the `id` values returned by the subquery.