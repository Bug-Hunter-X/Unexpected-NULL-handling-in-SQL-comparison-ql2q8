```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```
This revised query uses the `OR salary IS NULL` clause to explicitly include employees with NULL salary values in the result set. This ensures that all 'Sales' department employees, regardless of whether their salary is known, are considered in the results. Alternatively, you could use `COALESCE` to replace NULL with a specific value for the comparison:
```sql
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```
This version replaces NULL salary values with 0 before the comparison.  Choose the solution that best suits your data interpretation and business needs.