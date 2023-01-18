-- Get all cohorts with 18 or more students.
SELECT cohorts.name as cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER by student_count;

-- expected results
--  cohort_name | student_count 
-- -------------+---------------
--  FEB12       |            18
--  JUN04       |            19
--  APR09       |            19
--  SEP24       |            22
--  NOV19       |            22
-- (5 rows)
