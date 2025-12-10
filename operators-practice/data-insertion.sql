-- data insertion

INSERT INTO students (full_name, age, year_level, program) VALUES
('Aaron Celindro', 21, 'Sophomore', 'BSIT'),
('Maria Santos', 19, 'Freshman', 'BSBA'),
('John Dela Cruz', 22, 'Junior', 'BSA'),
('Ana Villamor', 20, 'Sophomore', 'BSIT'),
('Mark Lopez', 23, 'Senior', 'BSN'),
('Celine Ramos', 18, 'Freshman', 'BSIT');

INSERT INTO courses (course_code, course_name, units) VALUES
('IT101', 'Introduction to Computing', 3),
('IT201', 'Data Structures', 3),
('BA101', 'Principles of Management', 3),
('ACC200', 'Intermediate Accounting', 3),
('NUR150', 'Basic Nursing Skills', 4),
('IT300', 'Database Management', 3);

INSERT INTO enrollments (student_id, course_id, semester, school_year) VALUES
(1, 6, '1st Sem', '2024-2025'),
(1, 2, '1st Sem', '2024-2025'),
(2, 3, '1st Sem', '2024-2025'),
(3, 4, '2nd Sem', '2024-2025'),
(4, 1, '1st Sem', '2024-2025'),
(5, 5, '2nd Sem', '2024-2025'),
(6, 1, '1st Sem', '2024-2025');

