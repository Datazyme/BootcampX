-- return rows where total assignments is greater than or equal to 10.
SSELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;

-- expected result
--  day | total_assignments 
-- -----+-------------------
--    1 |                11
--    9 |                12
--   22 |                10
--   23 |                10
--   24 |                10
--   29 |                10
--   30 |                11
--   36 |                10
--   37 |                10
--   39 |                10
--   43 |                10