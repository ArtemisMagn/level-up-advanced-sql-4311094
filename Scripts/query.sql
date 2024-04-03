--01-01
SELECT emp.firstName, emp.lastName, emp.title, mng.firstName AS ManagerFirstName, mng.lastName AS ManagerLastName
FROM employee emp
JOIN employee mng ON emp.managerId = mng.employeeId
;
--01-02
SELECT emp.firstName, emp.lastName, sales.salesAmount
FROM employee emp
LEFT JOIN sales  ON emp.employeeId = sales.employeeId
WHERE emp.title = 'Sales Person' AND sales.salesAmount IS NULL
;
--01-03
