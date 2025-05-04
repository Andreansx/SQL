-- First task

-- Select firstname,lastname and departament columns from the Employees table
SELECT FirstName, LastName, Departament
FROM Employees
-- Add a condition to the query to select only employees from the IT department
WHERE Departament = 'IT';

-- Second task

-- First we select the average salary and Departament from the Employees table
SELECT AVG(Salary), Departament
FROM Employees
-- Then we group the results by Departament
GROUP BY Departament;