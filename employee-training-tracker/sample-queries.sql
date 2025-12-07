-- Sample queries I used
-- 1. List all employees
SELECT * FROM Employees;

-- 2. List all trainings
SELECT * FROM Trainings;

-- 3. Attendance with employee name and training title
SELECT 
    A.attendance_id,
    E.name AS employee,
    T.training_name,
    A.date_attended,
    A.status
FROM Attendance A
JOIN Employees E ON A.employee_id = E.employee_id
JOIN Trainings T ON A.training_id = T.training_id;

-- 4. Count total employees
SELECT COUNT(*) AS total_employees FROM Employees;

-- 5. Count total trainings per department
SELECT 
    E.department,
    COUNT(A.attendance_id) AS total_trainings
FROM Attendance A
JOIN Employees E ON A.employee_id = E.employee_id
GROUP BY E.department;

-- 6. Count completed trainings per training program
SELECT 
    T.training_name,
    COUNT(A.attendance_id) AS completed_count
FROM Attendance A
JOIN Trainings T ON A.training_id = T.training_id
WHERE A.status = 'Completed'
GROUP BY T.training_id;

-- 7. List distinct departments
SELECT DISTINCT department FROM Employees;

-- 8. Count employees per department
SELECT 
    department,
    COUNT(employee_id) AS total_employees
FROM Employees
GROUP BY department;

-- 9. Count distinct employees who completed at least one training
SELECT 
    COUNT(DISTINCT employee_id) AS unique_completed_employees
FROM Attendance
WHERE status = 'Completed';
