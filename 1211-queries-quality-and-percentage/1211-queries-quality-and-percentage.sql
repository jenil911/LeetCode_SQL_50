/* Write your T-SQL query statement below */
select query_name, 
round(avg(1.0 * rating / position), 2)
as quality,
round(sum(iif(rating<3, 100.0, 0)) / count(rating), 2)
as poor_query_percentage
from Queries
group by query_name
having query_name is not null;