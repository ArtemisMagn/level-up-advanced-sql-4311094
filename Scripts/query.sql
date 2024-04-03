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
SELECT cst.firstName, cst.lastName, cst.email, sls.salesAmount, sls.soldDate
FROM customer cst 
JOIN sales sls ON cst.customerId = sls.customerId
UNION
SELECT cst.firstName, cst.lastName, cst.email, sls.salesAmount, sls.soldDate
FROM customer cst 
LEFT JOIN sales sls ON cst.customerId = sls.customerId
WHERE sls.salesId IS NULL
UNION
SELECT cst.firstName, cst.lastName, cst.email, sls.salesAmount, sls.soldDate
FROM sales sls
LEFT JOIN customer cst ON cst.customerId = sls.customerId
WHERE cst.customerId IS NULL
;