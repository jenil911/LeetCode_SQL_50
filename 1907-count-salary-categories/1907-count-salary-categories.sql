/* Write your T-SQL query statement below */
/* Write your T-SQL query statement below */

SELECT 
    b.category
    ,COUNT(account_id)  accounts_count
FROM Accounts a
RIGHT OUTER JOIN (VALUES('Low Salary'),('High Salary'),('Average Salary')) AS b(category) 
    ON CASE WHEN income < 20000 THEN 'Low Salary'
        WHEN income > 50000 THEN 'High Salary'
        ELSE 'Average Salary' END = b.category
GROUP BY b.category
