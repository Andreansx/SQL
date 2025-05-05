-- First Task

-- First we need to add the Name and Price columns to the selection.
SELECT Name, Price
FROM Products
-- Now we need to filter the results to only include products with a price greater than 20.0.
WHERE Price > 20.0;
-- Finally, we need to sort the results by price in ascending order.
ORDER BY Price ASC;

-- Second Task
-- First we need to add the Name and InStock columns to the selection.
SELECT Name,InStock
FROM Products
-- Now we need to filter the results to only include products with InStock less than 100.
WHERE InStock < 100.0;

-- Note the .0 , this is a good practice to avoid errors when comparing decimal values.