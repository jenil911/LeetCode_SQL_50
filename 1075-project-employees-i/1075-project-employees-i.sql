/* Write your T-SQL query statement below */

SELECT
    T1.project_id,
    ROUND(AVG(CAST(experience_years aS DECIMAL(10,2))) ,2) [average_years]
FROM
    Project T1 
INNER JOIN
    Employee T2 ON T1.employee_id = T2.employee_id
GROUP BY
    T1.project_id