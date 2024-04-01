        -- Weather Observation Station 12

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels.
-- Your result cannot contain duplicates.

-- Solution:
select 
  distinct city 
from 
  station 
where city regexp '^[^aeiou]' and city regexp '[^aeiou]$';

-- or
select 
  distinct(city)
from 
  station
where left(city,1) not in ('a','e','i','o','u') and
      right(city,1) not in ('a','e','i','o','u');
