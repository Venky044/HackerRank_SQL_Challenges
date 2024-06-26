--           Weather Observation Station 6

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
--  Your result cannot contain duplicates.

-- Solutions:
select distinct(city) 
  from station 
  where left(city, 1) in ('a', 'e', 'i', 'o', 'u');

--  or
select city
  from station
  where city like('a%') or 
      city like('e%') or
      city like('i%') or
      city like('o%') or
      city like('u%');
