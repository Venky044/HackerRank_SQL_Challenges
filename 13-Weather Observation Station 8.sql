--           Weather Observation Station 8

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
--  Your result cannot contain duplicates.

-- Solution:
select distinct(city)
  from station
  where left(city,1) in ('a','e','i','o','u') and 
        right(city,1) in ('a','e','i','o','u');

--  or

select distinct(city)
  from station
  where city REGEXP '^[aeiou]' and city REGEXP '[aeiou]%';
