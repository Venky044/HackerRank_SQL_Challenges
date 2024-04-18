--           Weather Observation Station 19

-- Consider P1(a,c) and P2(b.d) to be two points on a 2D plane where (a,b) 
-- are the respective minimum and maximum values of Northern Latitude (LAT_N) and 
-- (c,d) are the respective minimum and maximum values of Western Longitude (Long_W) in Station.

-- Query the Euclidean Distance b/w points P1 and P2 and format your answer to display 4 decimal digits.

-- Solution:
select 
  round(sqrt(pow(min(lat_n)-max(lat_n), 2) + pow((min(long_w)-max(long_w)), 2)),4)
from Station;
