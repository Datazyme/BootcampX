-- Get the total amount of time that a student has spent on all assignments.
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- \i 2_queries_joins/student_time_all_assignments.sql 
-- expected result
--  total_duration 
-- ----------------
--            6888
-- (1 row)