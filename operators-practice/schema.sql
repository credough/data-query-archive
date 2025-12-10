CREATE TABLE students (
   student_id INTEGER PRIMARY KEY AUTOINCREMENT,
   full_name TEXT NOT NULL,
   age INTEGER NOT NULL,
   year_level TEXT NOT NULL,
   program TEXT NOT NULL
);

CREATE TABLE courses (
   course_id INTEGER PRIMARY KEY AUTOINCREMENT,
   course_code TEXT NOT NULL UNIQUE,
   course_name TEXT NOT NULL,
   units INTEGER NOT NULL
);

CREATE TABLE enrollments (
   enrollment_id INTEGER PRIMARY KEY AUTOINCREMENT,
   student_id INTEGER NOT NULL,
   course_id INTEGER NOT NULL,
   semester TEXT NOT NULL,
   school_year TEXT NOT NULL,
   FOREIGN KEY (student_id) REFERENCES students(student_id),
   FOREIGN KEY 	(course_id) REFERENCES courses(course_id)
);
   