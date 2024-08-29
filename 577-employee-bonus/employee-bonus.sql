# Write your MySQL query statement below
SELECT emp.name, bon.bonus
FROM employee emp
LEFT JOIN Bonus bon
ON emp.empid = bon.empid
WHERE bonus < 1000 OR bonus IS NULL