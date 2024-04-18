--         Weather Observation Station 18

-- Consider  and  to be two points on a 2D plane.

--  happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the minimum value in Western Longitude (LONG_W in STATION).
--  happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the maximum value in Western Longitude (LONG_W in STATION).
          
-- Query the Manhattan Distance between points  and  and round it to a scale of 4 decimal place

-- explanation: Manhattan Distance --> p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|

-- Solution:
select
    round((max(Lat_N) - min(Lat_N)) + (max(Long_W) - min(Long_W)), 4)
from Station;
