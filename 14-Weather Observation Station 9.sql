          -- Weather Observation Station 9

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

-- Solution:
select distinct(city)
  from station
  where left(city,1) not in ('a','e','i','o','u');

-- or
select distinct(city) 
  from station 
  where city NOT regexp '^[aeiou]';

-- or
select distinct(city) 
  from station 
  where city regexp '^[^aeiou]';
