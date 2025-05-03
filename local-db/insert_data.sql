-- Insert data into students
INSERT INTO students (id, first_name, last_name, class) VALUES
(1, 'Anna', 'Nowak', '3B'),
(2, 'Piotr', 'Kowalski', '2A'),
(3, 'Maria', 'Wiśniewska', '3B'),
(4, 'Tomasz', 'Wójcik', '1C'),
(5, 'Julia', 'Kamińska', '2A');

-- Insert data into teachers
INSERT INTO teachers (id, first_name, last_name, subject) VALUES
(1, 'Jan', 'Zieliński', 'Math'),
(2, 'Ewa', 'Kaczmarek', 'Biology'),
(3, 'Marek', 'Lewandowski', 'Physics');

-- Insert data into grades
INSERT INTO grades (id, student_id, subject, grade) VALUES
(1, 1, 'Math', 5),
(2, 1, 'Biology', 4),
(3, 2, 'Math', 3),
(4, 3, 'Biology', 5),
(5, 3, 'Math', 2),
(6, 4, 'Physics', 4),
(7, 5, 'Math', 5),
(8, 5, 'Biology', 5);
