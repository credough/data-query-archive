INSERT INTO Employees(name, department, email) VALUES
('Juan Dela Cruz', 'Finance', 'juandelacruz@mail.com'),
('Maria Santos', 'HR', 'mariasantos@mail.com'),
('Pedro Reyes', 'IT', 'pedroreyes@mail.com'),
('Ana Villanueva', 'Marketing', 'anavillanueva@mail.com'),
('Luis Navarro', 'Logistics', 'luisnavarro@mail.com');

INSERT INTO IssueTypes(issue_name, description) VALUES
('Internet Issue', 'Slow or no internet connection'),
('Hardware Problem', 'Laptop, mouse, keyboard, or equipment malfunction'),
('Software Issue', 'Application errors or installation problems'),
('Email Issue', 'Email not sending or receiving');

INSERT INTO ITStaff (name, specialization) VALUES
('Mark Valencia', 'Network'),
('Chris Ramirez', 'Hardware'),
('Janine Cruz', 'Software'),
('Ramon Bautista', 'Systems');

INSERT INTO Tickets (employee_id, issue_id, staff_id, date_reported, status, priority) VALUES
(1, 1, 1, '2025-01-05', 'Resolved', 'High'),
(2, 2, 2, '2025-01-06', 'In progress', 'Medium'),
(3, 3, 3, '2025-01-07', 'Open', 'High'),
(4, 4, 4, '2025-01-08', 'Resolved', 'Low'),
(5, 1, 1, '2025-01-09', 'Open', 'Medium'),
(1, 3, 3, '2025-01-10', 'In progress', 'High');