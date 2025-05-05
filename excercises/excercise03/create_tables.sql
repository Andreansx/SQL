CREATE TABLE Authors(
	AuthorID INT PRIMARY KEY, -- <-- Primary Key
	AuthorName TEXT
);
CREATE TABLE Books(
    BookID INT PK,
    BookTitle TEXT,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Authors VALUES
(1, 'Adam Mickiewicz'),
(2, 'Henryk Sienkiewicz'),
(3, 'Wisława Szymborska');

INSERT INTO Books VALUES
(10, 'Pan Tadeusz',        1),
(11, 'Ogniem i Mieczem',   2),
(12, 'Lalka',              2),
(13, 'Wiersze wybrane',    3);