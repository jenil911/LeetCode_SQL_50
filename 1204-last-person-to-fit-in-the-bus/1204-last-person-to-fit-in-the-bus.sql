/* Write your T-SQL query statement below */
/* Write your T-SQL query statement below */
with cte as (
    SELECT *,
        SUM(weight) OVER(ORDER BY turn ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) w_sum
    FROM queue
)
select top 1 person_name from cte where w_sum <= 1000 order by turn desc