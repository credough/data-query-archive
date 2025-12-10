--queries focused on filtering

SELECT s.full_name, c.course_name, c.units, e.semester
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.units = 3
  AND e.semester = '1st Sem';
  
--
SELECT full_name, age, program
FROM students
WHERE age BETWEEN 19 AND 21;

--
SELECT full_name, year_level, program
FROM students
WHERE program = 'BSIT'
   OR year_level = 'Freshman';

--
SELECT full_name, program, age
FROM students
WHERE program = 'BSIT'
  AND age > 20;

--
SELECT course_code, course_name, units
FROM courses
WHERE units BETWEEN 3 AND 4;

--
SELECT e.enrollment_id, s.full_name, e.semester, e.school_year
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
WHERE e.semester = '1st Sem'
   OR e.school_year = '2024-2025';

--
SELECT full_name
FROM students
WHERE full_name LIKE '%a%';

--
SELECT full_name, age, year_level
FROM students
WHERE year_level = 'Freshman'
  AND age BETWEEN 18 AND 20;

