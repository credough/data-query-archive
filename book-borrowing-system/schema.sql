-- Sample Data for Book Borrowing System

INSERT INTO Books (title, author, year_published) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925),
('To Kill a Mockingbird', 'Harper Lee', 1960),
('1984', 'George Orwell', 1949);

INSERT INTO Borrowers (name, email) VALUES
('Aaron Celindro', 'aaron@mail.com'),
('Kanye West', 'ye@mail.com'),
('Nick Fuentes', 'nick@mail.com');

INSERT INTO Loans (book_id, borrower_id, date_borrowed, date_returned) VALUES
(1, 1, '2025-01-01', NULL),
(2, 2, '2025-01-03', '2025-01-10');
