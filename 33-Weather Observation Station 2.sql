        -- Weather Observation Station 2

-- Query the following two values from the STATION table:
-- The sum of all values in LAT_N rounded to a scale of  decimal places.
-- The sum of all values in LONG_W rounded to a scale of  decimal pl

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- OUTPUT:
    -- latlon
-- where  is the sum of all values in LAT_N and  is the sum of all values in LONG_W. Both results must be rounded to a scale of  decimal places.

-- Solution:
select 
  round(sum(lat_n),2) as lat, round(sum(long_w),2) as lon
from Station;
