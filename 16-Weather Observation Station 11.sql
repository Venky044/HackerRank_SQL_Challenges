          -- Weather Observation Station 11

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates

-- Solutions:
select distinct city 
  from station 
  where city regexp '^[^aeiou]' or city regexp '[^aeiou]$';

-- or
select distinct city 
  from station 
  where city not regexp '^[aeiou]' or city not regexp '[aeiou]$';

-- or
select distinct(city)
  from station
  where (left(city,1) not in ('a','e','i','o','u')) or
        (right(city,1) not in ('a','e','i','o','u'));
