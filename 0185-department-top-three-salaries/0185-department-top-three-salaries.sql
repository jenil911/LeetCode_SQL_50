# Write your MySQL query statement below

select d.name as Department,e.name as Employee,e.salary as Salary 
from Department d 
join Employee e on d.id=e.departmentId 
where (select count(distinct salary) 
from Employee e2 
where e2.departmentId=e.departmentId and e2.salary>=e.salary)<=3 
order by department,salary desc;