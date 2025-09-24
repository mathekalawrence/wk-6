--Week 6: Joins and Relationships
-- Question 1: Get employee details with office code using INNER JOIN
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

