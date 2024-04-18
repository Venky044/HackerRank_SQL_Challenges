--         Weather Observation Station 20

-- A MEDIAN is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

-- Solution:
with sample as (
    select 
          Lat_N, 
          row_number() over(order by Lat_N) as r_n
    from station
)

select round(Lat_N, 4)
from sample
where r_n = (select round(max(r_n)/2) from sample);
