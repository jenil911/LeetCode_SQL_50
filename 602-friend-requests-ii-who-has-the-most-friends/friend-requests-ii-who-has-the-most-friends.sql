/* Write your T-SQL query statement below */
SELECT TOP 1 id, COUNT(*) num
    FROM (SELECT requester_id id
        FROM RequestAccepted
    UNION ALL
        SELECT accepter_id id
        FROM RequestAccepted) sub
    GROUP BY id
    ORDER BY num DESC