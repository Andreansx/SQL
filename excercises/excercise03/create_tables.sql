CREATE TABLE Authors(
	AuthorID INT PK,
	AuthorName TEXT
);
CREATE TABLE Books(
    BookID INT PK,
    BookTitle TEXT,
    AuthorID INT FK REFERENCES Authors(AuthorID)
);