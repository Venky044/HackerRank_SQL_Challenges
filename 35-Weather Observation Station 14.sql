--         Weather Observation Station 14

-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . 
-- Truncate your answer to  decimal places.

-- Solution:
select 
  round(max(lat_n),4)
from station
where lat_n < 137.2345;
