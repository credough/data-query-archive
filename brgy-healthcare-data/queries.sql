-- Basic Queries I used
-- 1. Select all patients
SELECT * FROM Patients;

-- 2. Select all services
SELECT * FROM Services;

-- 3. All appointments with patient name and service
SELECT A.appointment_id, P.name AS patient, S.service_name AS service, A.date_appointment, A.notes
FROM Appointments A
JOIN Patients P ON A.patient_id = P.patient_id
JOIN Services S ON A.service_id = S.service_id;

-- 4. Update notes for an appointment
UPDATE Appointments
SET notes = 'Blood test normal'
WHERE appointment_id = 3;

-- 5. Delete a patient (requires deleting appointments first)
DELETE FROM Appointments
WHERE patient_id = 3;

DELETE FROM Patients
WHERE patient_id = 3;

-- 6. Count appointments per service
SELECT S.service_name, COUNT(A.appointment_id) AS total_appointments
FROM Appointments A
JOIN Services S ON A.service_id = S.service_id
GROUP BY S.service_name;

-- 7. Show all appointments for a specific patient
SELECT A.appointment_id, S.service_name, A.date_appointment, A.notes
FROM Appointments A
JOIN Services S ON A.service_id = S.service_id
WHERE A.patient_id = 1;

-- 8. Show upcoming appointments (date_returned could be added if needed)
SELECT *
FROM Appointments
WHERE date_appointment >= '2025-01-05';
