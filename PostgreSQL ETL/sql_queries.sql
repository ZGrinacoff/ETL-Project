-- -- Calculate Total Weekly Sales across all departments for each store, per date.

-- SELECT store, date, COUNT(dept) AS "total_dept", SUM(weekly_sales) AS "total_sales"
-- FROM sales
-- GROUP BY store, date
-- ORDER BY 
-- 	store::INT ASC,
-- 	date ASC;

-- Merge sales table with features table for all mark_down columns and calculate Total Weekly Sales across all departments for each store, per date.
	
-- SELECT s.store, s.date, MIN(f.mark_down_1) AS "mark_down_1", MIN(f.mark_down_2) AS "mark_down_2",
-- MIN(f.mark_down_3) AS "mark_down_3", MIN(f.mark_down_4) AS "mark_down_4", MIN(f.mark_down_5) AS "mark_down_5",
-- SUM(s.weekly_sales) AS "total_weekly_sales", COUNT(s.dept) AS "total_dept"
-- FROM sales AS s
-- JOIN features AS f
-- ON (s.store = f.store AND s.date = f.date)
-- GROUP BY s.store, s.date
-- ORDER BY s.store::INT ASC, s.date;


