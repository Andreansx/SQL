## Another simple excercise. However, this one includes two tables.

## Tasks for this excercise:
```
1. Wypisz tytuł książki (Title) oraz nazwisko autora (AuthorName) dla wszystkich książek.

2. Wypisz liczbę książek napisanych przez każdego autora (COUNT(*)), pokazując AuthorName oraz tę liczbę, posortowane malejąco według liczby książek.
```
So first let's run [`create_tables.sql`]:
```sql
CREATE TABLE Authors(
	AuthorID INT PRIMARY KEY, -- <-- Primary Key
	AuthorName TEXT
);
```
This time, we are going to create tables that are related in some way to each other. The table **Books** will get **`AuthorID`** from the **Authors** table.  
**Now this is when I made a mistake when first writing those commands.**  
I wrote the **Books** table creation like this:
```sql
CREATE TABLE Books(
    BookID INT PK,
    BookTitle TEXT,
    AuthorID TEXT FK REFERENCES Authors(AuthorID)
     -- Look here ^^^^
);
``` 
This returned a error when I tried to insert values into **`Authors`**:
```sql
INSERT INTO Authors VALUES
  (1, 'Adam Mickiewicz'),
  (2, 'Henryk Sienkiewicz'),
  (3, 'Wisława Szymborska');

Wykonano z błędami.
Wynik: foreign key mismatch - "Books" referencing "Authors"
W wierszu 2:
INSERT INTO Authors VALUES
(1, 'Adam Mickiewicz'),
(2, 'Henryk Sienkiewicz'),
(3, 'Wisława Szymborska');
```
The part: `AuthorID TEXT FK REFERENCES Authors(AuthorID)` in Authors table creation was incorrect. The correct version should look like this:
```sql
AuthorID INT,
FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
```
In the incorrect version, I forgot to write `FOREIGN KEY` instead of `FK`. This needs to be in the full format, not the short "FK" because the Authors.AuthorID was not properly declared as the Primary Key so the declaration key in `Books` shows "mismatch".  
The whole correct version of the `Books` table creation should look like this:
```sql
CREATE TABLE Books(
    BookID INT,
    BookTitle TEXT,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    PRIMARY KEY (BookID)
);
```

Once the tables creation is correct like in [`create_tables.sql`](./create_tables.sql) file, we can get to the excercise.

<div align="center">
<h2>First Task</h2>
</div>

We need to list the titles of the books along with the name of the author.  
Let's add the neccessary fields to the selection:
