          -- Weather Observation Station 16

-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
-- Round your answer to 4 d

-- Solution:
select 
  round(min(lat_n),4)
from Station
where lat_n > 38.7780;
