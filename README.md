# SQL Subquery Multiple Rows Issue

This repository demonstrates a common SQL error involving subqueries that can return multiple rows when only a single value is expected. The query attempts to select all employees from the 'Sales' department. However, if the `departments` table has multiple entries with the name 'Sales' (perhaps due to duplicates or inconsistency), the subquery will return multiple IDs, resulting in an error or incorrect data. The solution provides a corrected query that handles this scenario using `IN` operator.

## How to reproduce
1. Create a `departments` table with sample data that include multiple rows with the name 'Sales'.
2. Create an `employees` table with sample data.
3. Execute the buggy query. Observe the error or incorrect output. 
4. Execute the solution query. Observe the correct output. 