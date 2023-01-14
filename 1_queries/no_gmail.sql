-- Get all of the students without a gmail.com account and a phone number.
-- Get their name, email, id, and cohort_id.
SELECT name, email, id, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;

-- expected result
-- vagrant=# \i 1_queries/no_gmail.sql 
--       name       |           email           | id  | cohort_id 
-- -----------------+---------------------------+-----+-----------
--  Javonte Ward    | jessie_howell@hotmail.com | 178 |          
--  Jessika Jenkins | stephanie.koss@kevon.io   | 187 |          
--  Jerrold Rohan   | wehner.twila@hotmail.com  | 189 |          
-- (3 rows)