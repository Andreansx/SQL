## Second excercise. Also simple and inludes only one table.

## Tasks for this excercise:

```
1. Wypisz Name i Price wszystkich produktów, których cena jest powyżej 20 zł, posortowane rosnąco według ceny.

2. Wypisz Name i InStock tych produktów, których stan magazynowy (InStock) jest mniejszy niż 100.
```

First let's run the [`create_tables.sql`](create_tables.sql) file. It contains also the data for the table.
```sql
CREATE TABLE Products(
	ProductID INT PK,
	Name TEXT,
	Price DECIMAL,
	InStock INT
);

INSERT INTO Products VALUES
(101, 'Kubek',       15.00,  120),
(102, 'Długopis',     2.50,  500),
(103, 'Notes',       12.00,  200),
(104, 'Pióro wieczne',120.00,  30),
(105, 'Organizer',   45.00,   75);
```

<div align="center">
<h2>First Task</h2>
</div>

We need to list the names and prices of all products which are more expensive than 20 PLN and sort them in ascending order.  

So let's first add the neccessary fields to the selection:
```sql
SELECT Name, Price
FROM Products
```
This will list all product names along with prices. Now **we need to add a filter** which will cut the selection to only include specific items.  
In our case, we need only items that cost **more than 20 PLN ( zł )**. Let's implement that:
```sql
WHERE Price > 20.0
```
This makes sure that only neccessary items show up.  
Now, let's list them in **ascending** order by adding:
```sql
ORDER BY Price ASC;
```
> Note that we need to specify the `ASC`. `DESC` would make the products show in **descending** order

The output should return something like this:
|Name|Price|
|---|---|
|Organizer|45|
|Pióro wieczne|120|

**This completes the first task**

<div align="center">
<h2>Second Task</h2>
</div>

Now we need to list the names and the `InStock` field for products that have `InStock` attribute smaller than **100**.

Let's add only the neccessary fields to the selection:
```sql
SELECT Name,InStock
FROM Products
```
Now, let's add a filter which will cut the selection to only show items that have less than 100 pieces in stock:
```sql
WHERE InStock < 100.0;
```
The output should be something like this:
|Name|InStock|
|---|---|
|Pióro wieczne|30|
|Organizer|75|

We can optionally change the order the products are listed in:
```sql
ORDER BY InStock DESC;
```
This would list them in **descending** order.

**This makes the second task completed along with whole excercise**
Full solution available in the [`solution.sql`](./solution.sql) file.
Database used: [`local2.db`](/local-db/local2.db)