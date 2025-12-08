CREATE TABLE IssueTypes(
  issue_id INTEGER PRIMARY KEY AUTOINCREMENT,
  issue_name TEXT NOT NULL,
  description TEXT
);

CREATE TABLE ITStaff(
  staff_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  specialization TEXT
);

CREATE TABLE Tickets(
  ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
  employee_id INTEGER,
  issue_id INTEGER,
  staff_id INTEGER,
  date_reported TEXT,
  status TEXT,
  priority TEXT,
  
  FOREIGN KEY(employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY(issue_id) REFERENCES IssueTypes(issue_id),
  FOREIGN KEY(staff_id) REFERENCES ITStaff(staff_id)
 );