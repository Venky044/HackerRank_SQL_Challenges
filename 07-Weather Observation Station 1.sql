          -- Weather Observation Station 1

-- Query a list of CITY and STATE from the STATION table.
--   where LAT_N is the northern latitude and LONG_W is the western longitude.

-- Solution:
select s.city, s.state
  from station s;
