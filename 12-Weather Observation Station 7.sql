          -- Weather Observation Station 7

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
--   Your result cannot contain duplicates.

-- Solutions:
select distinct(city)
  from station
  where right(city,1) in ('a','e','u','i','o');
