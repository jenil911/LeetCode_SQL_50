SELECT empu.unique_id , emp.name
FROM Employees AS emp
LEFT JOIN EmployeeUNI as empu
ON emp.id = empu.id