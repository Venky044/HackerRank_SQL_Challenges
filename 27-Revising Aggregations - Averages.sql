        -- Revising Aggregations - Averages

-- Query the Averages population of all cities in CITY where District is California.

-- Solution:
select 
  avg(population) 
from city 
where district = 'California';
