--Week 6: Joins and Relationships
-- Question 1: Get employee details with office code using INNER JOIN
  --Returns only employees who have a valid office code that exists in the offices table
  --Excludes any employees with NULL or invalid office codes
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: Get product details with product line using LEFT JOIN
  --Returns all products regardless of whether their product line exists in the productlines table
  --Includes products even if their product line category is missing from the productlines table
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3: Get order details with customer info using RIGHT JOIN (first 10 orders)
--Returns all orders (right table) and matches with customers (left table)
   --Ensures we get all orders even if the customer record is missing (though unlikely in proper database design)
    --The LIMIT 10 gives us the first 10 orders as requested
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;

--Used table aliases (e, o, p, pl, c) for better readability





