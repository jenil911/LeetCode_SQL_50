select name
from employee e
join (select managerId--, count(managerId) as count
    from Employee
    group by managerId
    having count(managerId)>=5) m
on e.id = m.managerId