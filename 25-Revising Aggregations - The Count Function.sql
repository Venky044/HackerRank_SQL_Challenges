          -- Revising Aggregations - The Count Function

-- Query a count of the number of cities in CITY having a Population larger than .

-- Solution:
select 
  count(id) 
from city 
where population > 100000;
