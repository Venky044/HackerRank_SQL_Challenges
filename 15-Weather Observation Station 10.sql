          -- Weather Observation Station 10

-- Query the list of CITY names from STATION that do not end with vowels. 
-- Your result cannot contain duplicates.

-- Solutions:
select distinct city 
  from station 
  where city regexp '[^aeiou]$';

-- or
select distinct city 
  from station 
  where city not regexp '[aeiou]$';

-- or
select distinct city 
  from station 
  where right(city, 1) not in ('a', 'e', 'i', 'o', 'u');
