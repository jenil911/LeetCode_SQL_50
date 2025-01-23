# Write your MySQL query statement below
SELECT 
    id, 
    movie, 
    description, 
    rating
FROM 
    Cinema
WHERE 
    id % 2 != 0 AND  -- Only include movies with odd-numbered IDs
    description != 'boring'  -- Exclude movies with "boring" description
ORDER BY 
    rating DESC;  -- Sort the results by rating from highest to lowest