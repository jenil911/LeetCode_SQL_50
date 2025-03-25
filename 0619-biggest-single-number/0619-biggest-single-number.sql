/* Write your T-SQL query statement below */
select COALESCE((select top 1 num from MyNumbers
group by num
having count(num)=1
order by num desc),NULL) as num