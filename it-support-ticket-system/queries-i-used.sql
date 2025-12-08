--Sample queries I used
-- 1. View all tickets with employee, issue type, and assigned IT staff
SELECT 
    T.ticket_id,
    E.name AS submitted_by,
    I.issue_name,
    S.name AS assigned_staff,
    T.date_reported,
    T.status,
    T.priority
FROM Tickets T
JOIN Employees E ON T.employee_id = E.employee_id
JOIN IssueTypes I ON T.issue_id = I.issue_id
JOIN ITStaff S ON T.staff_id = S.staff_id;

-- 2. Count total tickets
SELECT COUNT(*) AS total_tickets FROM Tickets;

-- 3. Count tickets by status
SELECT 
    status,
    COUNT(ticket_id) AS count
FROM Tickets
GROUP BY status;

-- 4. Count HIGH priority tickets
SELECT COUNT(*) AS high_priority_tickets
FROM Tickets
WHERE priority = 'High';

-- 5. Distinct departments submitting tickets
SELECT DISTINCT department FROM Employees;

-- 6. Count tickets per department
SELECT 
    E.department,
    COUNT(T.ticket_id) AS total_tickets
FROM Tickets T
JOIN Employees E ON T.employee_id = E.employee_id
GROUP BY E.department;

-- 7. Count tickets handled by each IT staff
SELECT 
    S.name AS staff,
    COUNT(T.ticket_id) AS tickets_handled
FROM Tickets T
JOIN ITStaff S ON T.staff_id = S.staff_id
GROUP BY S.staff_id;

-- 8. Count distinct employees who submitted any ticket
SELECT COUNT(DISTINCT employee_id) AS unique_ticket_submitters
FROM Tickets;

-- 9. List tickets that are still open or in progress
SELECT 
    ticket_id,
    status,
    priority
FROM Tickets
WHERE status IN ('Open', 'In Progress');
