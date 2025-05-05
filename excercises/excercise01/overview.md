## First excercise that I am sharing here, really easy and good oppurtunity for me to practice both SQL querying and writing documentiation

## Tasks for this excercise:

```
1. Wypisz pełne imię i nazwisko (FirstName || ' ' || LastName) oraz dział (Department) wszystkich pracowników z działu IT.

2. Znajdź średnie wynagrodzenie (AVG(Salary)) w każdym dziale.
```

So first I run [`create_tables.sql`](./create_tables.sql):
```sql
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	FirstName TEXT,
	LastName TEXT,
	Departament TEXT,
	Salary INT
);
```
> remember the `PK` near the EmployeeID class. It makes the `EmployeeID` the **Primary Key** for this table

then [`insert.sql`](./insert.sql):
```sql
INSERT INTO Employees VALUES
(1, 'Anna',    'Nowak',    'HR',       5000),
(2, 'Piotr',   'Kowalski', 'IT',       7000),
(3, 'Ewa',     'Zielińska','Finance',  6500),
(4, 'Krzysztof','Wiśniewski','IT',      7200),
(5, 'Maria',   'Wójcik',   'HR',       4800);
```
<div align="center">
<h2>First task</h2>
</div>

let's find the full names of all employees from the IT Department.

First we need to list the `FirstName` and `LastName` field along with `Departament`:
```sql
SELECT FirstName,LastName,Departament
FROM Employees
```
This will list all the employees but we want only the ones from IT.  
We need to add a `WHERE` argument which will filter the selection basing on `Departament` field.
```sql
WHERE Departament = 'IT';
```
This makes the selection only show those employees who are in the IT Departament.  
Should return something like:
|FirstName|LastName|Departament|   
|---|---|---|
|Piotr|Kowalski|IT|
|Krzysztof|Wiśniewski|IT|

That makes the first task complete. 

<div align="center">
<h2>Second task</h2>
</div>

now we need to find the average salary for each of the departaments.  
To do that we need to select the departaments and average salary:
```sql
SELECT AVG(Salary),Departament
FROM Employees;
```
However this is not enough since we need to list the average for every departament.  
Let's group the averages by departament:
```sql
GROUP BY Departament;
```
Now this should work and return something like this:
| AVG(Salary) | Departament |
| -------- | ------- |
| 6500.0 | Finance |
| 4900.0 | HR |
| 7100.0 | IT |

__This solves the second task along with the whole excercise__

Full solution available in the [`solution.sql`](./solution.sql) file.  
Database used in this excercie: [`local.db`](/local-db/local.db)