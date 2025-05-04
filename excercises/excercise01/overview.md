## Tasks for this excercise:

```
Wypisz pełne imię i nazwisko (FirstName || ' ' || LastName) oraz dział (Department) wszystkich pracowników z działu IT.

Znajdź średnie wynagrodzenie (AVG(Salary)) w każdym dziale.
```

So first I run [`create_tables.sql`](./create_tables.sql):
```sql
CREATE TABLE Employees(
	EmployeeID INT PK,
	FirstName TEXT,
	LastName TEXT,
	Departament TEXT,
	Salary INT
);
```

then [`insert.sql`](./insert.sql):
```sql
INSERT INTO Employees VALUES
(1, 'Anna',    'Nowak',    'HR',       5000),
(2, 'Piotr',   'Kowalski', 'IT',       7000),
(3, 'Ewa',     'Zielińska','Finance',  6500),
(4, 'Krzysztof','Wiśniewski','IT',      7200),
(5, 'Maria',   'Wójcik',   'HR',       4800);
```