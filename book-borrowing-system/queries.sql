-- Basic SQL Queries for Practice

-- Select all books
SELECT * FROM Books;

-- Select borrowers who returned books
SELECT * FROM Loans
WHERE date_returned IS NOT NULL;

-- Select books borrowed by a specific person
SELECT B.title, R.name, L.date_borrowed
FROM Loans L
JOIN Books B ON L.book_id = B.book_id
JOIN Borrowers R ON L.borrower_id = R.borrower_id
WHERE R.name = 'Aaron Celindro';

-- Update a book title
UPDATE Books
SET title = 'The Great Gatsby (Updated)'
WHERE book_id = 1;

-- Delete a borrower
DELETE FROM Borrowers
WHERE borrower_id = 3;

-- Join: All loans with names and book titles
SELECT L.loan_id, B.title, R.name, L.date_borrowed, L.date_returned
FROM Loans L
JOIN Books B ON L.book_id = B.book_id
JOIN Borrowers R ON L.borrower_id = R.borrower_id;
