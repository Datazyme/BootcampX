-- Get the total number of assignment submissions for each cohort.
SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER by total_submissions DESC;

-- expected result
--  cohort | total_submissions 
-- --------+-------------------
--  SEP24  |              9328
--  JUN04  |              8030
--  APR09  |              7935
--  NOV19  |              7231
--  JUL02  |              5868
--  MAY07  |              5843
--  FEB12  |              5440
--  JUL30  |              4664
--  OCT22  |              4626
--  AUG27  |              4589
--  MAR12  |              3002
-- (11 rows)