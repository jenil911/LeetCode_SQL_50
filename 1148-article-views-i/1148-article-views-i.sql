# Write your MySQL query statement below
SELECT distinct author_id as ID
FROM Views
WHERE author_id = viewer_id
ORDER BY ID ASC