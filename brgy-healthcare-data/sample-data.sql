-- Sample Data
-- Patients
INSERT INTO Patients (name, age, gender, contact) VALUES
('Juan Dela Cruz', 35, 'Male', '09171234567'),
('Maria Santos', 28, 'Female', '09281234567'),
('Pedro Reyes', 42, 'Male', '09191234567'),
('Ana Villanueva', 50, 'Female', '09301234567');

-- Services
INSERT INTO Services (service_name, description) VALUES
('General Check-up', 'Routine health examination'),
('Vaccination', 'Immunization for children and adults'),
('Prenatal Consultation', 'Consultation for expecting mothers'),
('Blood Test', 'Basic lab test for general health');

-- Appointments
INSERT INTO Appointments (patient_id, service_id, date_appointment, notes) VALUES
(1, 1, '2025-01-03', 'Routine check-up, blood pressure normal'),
(2, 2, '2025-01-04', 'Flu vaccine administered'),
(3, 4, '2025-01-05', 'Blood test results pending'),
(4, 3, '2025-01-06', 'Prenatal check-up, 24 weeks');
