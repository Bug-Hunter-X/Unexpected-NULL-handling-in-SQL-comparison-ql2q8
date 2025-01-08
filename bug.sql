```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This SQL query might return unexpected results if the `salary` column contains NULL values.  The `>` operator will treat NULL as neither greater than nor less than 100000, effectively excluding any employees with a NULL salary from the result set, even if they belong to the 'Sales' department. This can lead to an incomplete or inaccurate result, especially if NULL salary values represent missing data rather than zero salaries. 