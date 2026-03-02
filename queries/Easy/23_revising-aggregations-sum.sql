-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
-- 	Query the total population of all cities in CITY where District is California.

SELECT SUM(Population) FROM CITY WHERE DISTRICT = 'California';