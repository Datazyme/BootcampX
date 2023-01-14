-- Get the names of all of the students from a single cohort.
-- Select their id and name. 
-- Order them by their name in alphabetical order.
-- just use any number for the cohort_id.

SELECT id, name
FROM students
WHERE cohort_id = 1
ORDER BY name

-- expected result
--  id |       name        
-- ----+-------------------
--   1 | Armand Hilll
--  13 | Brian Jones
--  16 | Carmel Grant
--  14 | Clint Cremin
--  17 | Colten Gutkowski
--   9 | Donnie Lueilwitz
--   7 | Edison Brown
--   4 | Elliot Dickinson
--   6 | Erna Cassin
--  11 | Hiram Veum
--   8 | Lionel Morar
--   5 | Lloyd Boehm
--  12 | Lynn Kilback
--  15 | Maximillia Willms
--  10 | Obie Howell
--  18 | Pamela Runolfsson
--   3 | Stan Miller
--   2 | Stephanie Wolff
-- (18 rows)