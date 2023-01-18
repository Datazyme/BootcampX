-- Get currently enrolled students' average assignment completion time.
SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;

-- expected results
--        student       | average_assignment_duration 
-- ---------------------+-----------------------------
--  Hettie Hettinger    |        140.0533333333333333
--  Santino Oberbrunner |        139.2991803278688525
--  Vance Kihn          |        100.0730994152046784
--  Jerrold Rohan       |         99.3553719008264463
--  Vivienne Larson     |         96.1818181818181818
--  Sean Bartell        |         94.9056047197640118
--  Fannie Hammes       |         94.8833333333333333
--  Javonte Ward        |         93.9642857142857143
--  Bart Leuschke       |         93.7341040462427746
--  Bertha Johnson      |         93.4252199413489736
--  Ike Lockman         |         92.1510204081632653