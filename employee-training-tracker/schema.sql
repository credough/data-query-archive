-- schema
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Trainings;
DROP TABLE IF EXISTS Employees;

-- Employees table
CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    department TEXT,
    position TEXT,
    email TEXT
);

-- Trainings table
CREATE TABLE Trainings (
    training_id INTEGER PRIMARY KEY AUTOINCREMENT,
    training_name TEXT NOT NULL,
    description TEXT
);

-- Attendance table
CREATE TABLE Attendance (
    attendance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    training_id INTEGER,
    date_attended TEXT,
    status TEXT,  -- 'Completed', 'Pending', 'Missed'
    FOREIGN KEY(employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY(training_id) REFERENCES Trainings(training_id)
);
