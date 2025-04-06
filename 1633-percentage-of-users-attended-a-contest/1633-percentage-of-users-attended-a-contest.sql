/* Write your T-SQL query statement below */
select r.contest_id, round(count(r.user_id)*100.0/(select count(distinct u.user_id) from users u),2) as percentage
from register r
left join users u on u.user_id=r.user_id
group by contest_id
order by percentage desc, contest_id;