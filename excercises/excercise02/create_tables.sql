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
