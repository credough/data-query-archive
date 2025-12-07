-- Sample data
-- Employees
INSERT INTO Employees (name, department, position, email) VALUES
('Juan Dela Cruz', 'IT', 'Software Engineer', 'juan.delacruz@example.com'),
('Maria Santos', 'HR', 'HR Manager', 'maria.santos@example.com'),
('Pedro Reyes', 'Finance', 'Accountant', 'pedro.reyes@example.com'),
('Ana Villanueva', 'Marketing', 'Marketing Specialist', 'ana.villanueva@example.com'),
('Luis Navarro', 'IT', 'System Analyst', 'luis.navarro@example.com');

-- Trainings
INSERT INTO Trainings (training_name, description) VALUES
('Data Privacy', 'Training on handling confidential company data'),
('Workplace Safety', 'Proper safety protocols in the office'),
('Time Management', 'Managing tasks efficiently'),
('Customer Service', 'Effective communication with clients');

-- Attendance
INSERT INTO Attendance (employee_id, training_id, date_attended, status) VALUES
(1, 1, '2025-01-03', 'Completed'),
(2, 2, '2025-01-04', 'Completed'),
(3, 3, '2025-01-05', 'Pending'),
(4, 4, '2025-01-06', 'Completed'),
(5, 1, '2025-01-07', 'Completed'),
(1, 3, '2025-01-08', 'Pending');
