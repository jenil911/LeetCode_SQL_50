# Write your MySQL query statement below
SELECT distinct user_id, COUNT(follower_id) as followers_count
FROM Followers
Group by user_id 
Order by user_id
