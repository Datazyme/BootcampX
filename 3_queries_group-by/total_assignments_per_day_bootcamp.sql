-- Get the total number of assignments for each day of bootcamp.
SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;

-- expected results
--  day | total_assignments 
-- -----+-------------------
--    1 |                11
--    2 |                 9
--    3 |                 9
--    4 |                 9
--    5 |                 7
--    6 |                 6
--    7 |                 7
--    8 |                 9
--    9 |                12
--   10 |                 9
--   11 |                 7